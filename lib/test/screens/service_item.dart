import 'package:flutter/material.dart';
import '../../models/service.dart';
import 'service_detail_screen.dart';

class ServiceItem extends StatelessWidget {
  final Service service;

  ServiceItem({required this.service});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(service.title),
        subtitle: Text(service.description),
        trailing: Text('\$${service.price.toStringAsFixed(2)}'),
        onTap: () {
          // Navigasi ke detail layanan
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ServiceDetailScreen(service: service),
            ),
          );
        },
      ),
    );
  }
}
