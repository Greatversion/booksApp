// lib/screens/service_list_screen.dart
import 'package:booksapp/utils/app.card_widget.dart';
import 'package:booksapp/view_models/api_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import '../view_models/service_view_model.dart';

class ServiceListScreen extends StatefulWidget {
  const ServiceListScreen({super.key});

  @override
  State<ServiceListScreen> createState() => _ServiceListScreenState();
}

class _ServiceListScreenState extends State<ServiceListScreen> {
  bool _isGridView = false; // Variable to toggle between ListView and GridView
  @override
  Widget build(BuildContext context) {
    return Consumer<ServiceViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              centerTitle: true,
              leading: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.menu_book_sharp,
                  color: Color.fromARGB(152, 255, 255, 255),
                  size: 45,
                ),
              ),
              actions: [
                Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _isGridView =
                              !_isGridView; // Toggle between grid and list
                        });
                      },
                      icon: const Icon(
                        Icons.view_list_rounded,
                        color: Color.fromARGB(152, 255, 255, 255),
                        size: 45,
                      ),
                    ))
              ],
              backgroundColor: const Color.fromARGB(255, 66, 31, 108),
              automaticallyImplyLeading: false,
              title: Image.asset("assets/name.png"),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(56),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
                  child: TextField(
                    style: const TextStyle(
                        color: Colors.white,
                        textBaseline: TextBaseline.alphabetic),
                    onChanged: viewModel.filterSearch,
                    decoration: const InputDecoration(
                      hintText: 'Search services...',
                      hintStyle: TextStyle(
                          color: Color.fromARGB(154, 255, 255, 255),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1.15,
                              color: Color.fromARGB(206, 255, 255, 255)),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.15),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            body: viewModel.isLoading
                ? const Center(child: CircularProgressIndicator())
                : viewModel.services.isEmpty
                    ? Center(child: Image.asset("assets/noresult.png"))
                    : Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: _isGridView
                            ? GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      2, // 2 items per row in GridView
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                ),
                                itemCount: viewModel.services.length,
                                itemBuilder: (context, index) {
                                  final service = viewModel.services[index];
                                  return AnnouncementBannerCard(
                                    isGridView: true,
                                    serviceName: service.serviceName!,
                                    serviceID: viewModel
                                        .getServiceIdText(service.serviceId!),
                                    serviceCost: service.cost.toString(),
                                    serviceDescription: service.createdOn!,
                                  );
                                },
                              )
                            : Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: ListView.builder(
                                  itemCount: viewModel.services.length,
                                  itemBuilder: (context, index) {
                                    final service = viewModel.services[index];
                                    return AnnouncementBannerCard(
                                        serviceName: service.serviceName!,
                                        serviceID: viewModel.getServiceIdText(
                                            service.serviceId!),
                                        serviceCost: service.cost.toString(),
                                        serviceDescription: service.createdOn!);
                                  },
                                ),
                              ),
                      ));
      },
    );
  }
}
