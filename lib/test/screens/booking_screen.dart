// lib/screens/booking_screen.dart

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/service.dart';

class BookingScreen extends StatefulWidget {
  final Service service;

  BookingScreen({required this.service});

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _phone = '';

  Future<void> _saveBooking() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('last_booking_service', widget.service.title);
    await prefs.setString('last_booking_name', _name);
    await prefs.setString('last_booking_phone', _phone);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking ${widget.service.title}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Please fill in your details:',
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _phone = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    _saveBooking(); // Simpan data pemesanan
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Text('Booking Confirmed'),
                        content: Text(
                            'You have successfully booked ${widget.service.title}.\nName: $_name\nPhone: $_phone'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                              Navigator.of(context)
                                  .pop(); // Kembali ke halaman sebelumnya
                            },
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text('Confirm Booking'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
