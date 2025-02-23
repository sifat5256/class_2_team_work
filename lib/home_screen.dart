import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Centering the text in the AppBar
        title: const Center(
          child: Text(
            'Blood Donation',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        // Ensuring the AppBar is not too large
        toolbarHeight: 60.0, // You can adjust the height here
      ),
      // Drawer widget
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Drawer Header (optional)
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.redAccent),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            // Menu items
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Handle tap event here
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Handle tap event here
                Navigator.pop(context);
              },
            ),
            // You can add more menu items as needed
          ],
        ),
      ),
      body: Center(
        child: const Text(
          'Welcome to Blood Donors Community',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
