// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AnnouncementBannerCard extends StatelessWidget {
  final String serviceName;
  final String serviceCost;
  final DateTime serviceDescription;
  final String serviceID;
  final bool isGridView; // New property to control the layout

  AnnouncementBannerCard({
    super.key,
    required this.serviceName,
    required this.serviceCost,
    required this.serviceDescription,
    required this.serviceID,
    this.isGridView = false, // Default to list view layout
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 4),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 109, 86, 135), // Light greyish-purple
              Color.fromARGB(255, 105, 3, 230), // Dark greyish-purple
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
          color: const Color.fromARGB(91, 60, 3, 131),
        ),
        child: isGridView
            ? Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildContent(context),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _buildContent(context),
              ),
      ),
    );
  }

  List<Widget> _buildContent(BuildContext context) {
    return [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              serviceName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              serviceID,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 69, 69, 69),
              ),
            ),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFF22C235),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 99,
                    spreadRadius: 2,
                    color: const Color(0xFF31C967).withOpacity(0.5),
                  ),
                ],
              ),
              child: Text(
                "@ ${DateFormat('dd-MM-yyyy').format(serviceDescription)}",
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "₹ ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "$serviceCost.00",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ];
  }
}
