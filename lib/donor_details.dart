import 'package:flutter/material.dart';

class DonorDetailsScreen extends StatelessWidget {
  final Map<String, String> donor;

  DonorDetailsScreen({required this.donor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          backgroundColor: Colors.redAccent,
          title: Text(donor['name']!,style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: donor['name']!,
                child: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  radius: 50,
                  child: Text(
                    donor['bloodGroup']!,
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Name: ${donor['name']}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Blood Group: ${donor['bloodGroup']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Mobile: ${donor['mobile']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Address: ${donor['address']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ),
                onPressed: () {},
                child: Text('Call Now', style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
