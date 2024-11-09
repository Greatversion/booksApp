// lib/view_models/service_view_model.dart
import 'package:booksapp/models/data_model.dart';
import 'package:booksapp/services/api_services.dart';
import 'package:flutter/material.dart';

class ServiceViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<Service> _services = [];
  List<Service> _filteredServices = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<Service> get services => _filteredServices;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  ServiceViewModel() {
    fetchServices();
  }

  Future<void> fetchServices() async {
    if (_services.isNotEmpty) return;

    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _services = await _apiService.fetchServices("nandhakumar1411@gmail.com");
      _filteredServices = _services;
    } catch (e) {
      _errorMessage = "Failed to fetch services. Please try again.";
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Filter search results
  void filterSearch(String query) {
    if (query.isEmpty) {
      _filteredServices = _services;
    } else {
      _filteredServices = _services.where((service) {
        return service.serviceName!
                .toLowerCase()
                .contains(query.toLowerCase()) ||
            service.description!.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
    notifyListeners();
  }

  // Get human-readable service ID text
  String getServiceIdText(String serviceId) {
    if (serviceId == "LSA_ONLINE") {
      return "Real Estate Notarization";
    }
    if (serviceId == "LSA_OFFLINE") {
      "Real Estate Offline Notarization";
    }

    return serviceId;
  }

  @override
  void dispose() {
    _apiService.cancelRequests();
    super.dispose();
  }
}
