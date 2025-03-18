import 'package:flutter/material.dart';
import '../../models/service.dart';

class ServiceDetailScreen extends StatelessWidget {
  final Service service;

  ServiceDetailScreen({required this.service});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(service.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              service.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(service.description),
            SizedBox(height: 10),
            Text('Price: \$${service.price.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
