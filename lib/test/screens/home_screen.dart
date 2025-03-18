import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/service.dart';
import '../../widgets/service_item.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _lastBooking = '';

  @override
  void initState() {
    super.initState();
    _loadLastBooking();
  }

  Future<void> _loadLastBooking() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _lastBooking =
          prefs.getString('last_booking_service') ?? 'No bookings yet';
    });
  }

  final List<Service> services = [
    Service(
        id: '1',
        title: 'Service 1',
        description: 'Description for Service 1',
        price: 100.0),
    Service(
        id: '2',
        title: 'Service 2',
        description: 'Description for Service 2',
        price: 200.0),
    Service(
        id: '3',
        title: 'Service 3',
        description: 'Description for Service 3',
        price: 300.0),
  ];

  void _logout() async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ApiNext&Co Services'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Last Booking: $_lastBooking',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: services.length,
              itemBuilder: (ctx, index) {
                return ServiceItem(service: services[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
