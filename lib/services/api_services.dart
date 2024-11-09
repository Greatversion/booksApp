// lib/services/api_service.dart
import 'package:booksapp/models/data_model.dart';
import 'package:dio/dio.dart';
// import '../models/service.dart';

class ApiService {
  static const String apiUrl = "https://api.thenotary.app/customer/login";
  final Dio _dio;
  final CancelToken _cancelToken = CancelToken();

  ApiService()
      : _dio = Dio(BaseOptions(
          baseUrl: apiUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          headers: {'Content-Type': 'application/json'},
        )) {
    _dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
    ));
  }

  Future<List<Service>> fetchServices(String email) async {
    try {
      // Make a POST request with the email in the request body
      final response = await _dio.post(
        "",
        data: {"email": email},
        cancelToken: _cancelToken,
      );

      // Check for a successful response and data presence
      if (response.statusCode == 200 && response.data['data'] != null) {
        // Navigate the nested structure to extract `services`
        final List services = response.data['data']['availableServices']['services'];

        // Parse and return the list of services
        return services.map((service) => Service.fromJson(service)).toList();
      } else {
        throw Exception("Unexpected response format or empty data");
      }
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  // Error handling method
  void _handleError(DioException e) {
    String errorMessage;
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        errorMessage = "Connection timeout. Please check your network.";
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = "Server took too long to respond.";
        break;
      case DioExceptionType.badResponse:
        errorMessage = "Received invalid status: ${e.response?.statusCode}";
        break;
      case DioExceptionType.cancel:
        errorMessage = "Request was cancelled.";
        break;
      default:
        errorMessage = "An unexpected error occurred.";
        break;
    }
    print("Dio error: $errorMessage");
  }

  // Method to cancel any ongoing requests
  void cancelRequests() {
    _cancelToken.cancel("Request canceled by user");
  }
}
