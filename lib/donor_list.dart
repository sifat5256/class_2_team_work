import 'package:flutter/material.dart';
import 'donor_details.dart';

class BloodDonorListScreen extends StatelessWidget {
  final List<Map<String, String>> donors = [
    {'name': 'Rahim Khan', 'bloodGroup': 'A+', 'mobile': '01711111111', 'address': 'Dhaka'},
    {'name': 'Karim Ahmed', 'bloodGroup': 'B-', 'mobile': '01822222222', 'address': 'Chittagong'},
    {'name': 'Jamal Uddin', 'bloodGroup': 'O+', 'mobile': '01933333333', 'address': 'Sylhet'},
    {'name': 'Sajid Hossain', 'bloodGroup': 'AB+', 'mobile': '01644444444', 'address': 'Khulna'},
    {'name': 'Nasim Rahman', 'bloodGroup': 'O-', 'mobile': '01555555555', 'address': 'Barisal'},
    {'name': 'Arif Hossain', 'bloodGroup': 'A-', 'mobile': '01466666666', 'address': 'Rajshahi'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          centerTitle: true,
          backgroundColor: Colors.redAccent,
          title: Text('Blood Donor List',
            style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.9,
          ),
          itemCount: donors.length,
          itemBuilder: (context, index) {
            return DonorCard(donor: donors[index]);
          },
        ),
      ),
    );
  }
}

class DonorCard extends StatefulWidget {
  final Map<String, String> donor;
  DonorCard({required this.donor});

  @override
  _DonorCardState createState() => _DonorCardState();
}

class _DonorCardState extends State<DonorCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DonorDetailsScreen(donor: widget.donor),
          ),
        );
      },
      onTapDown: (_) => setState(() => _isHovered = true),
      onTapUp: (_) => setState(() => _isHovered = false),
      onTapCancel: () => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: _isHovered ? Colors.red[200] : Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: _isHovered ? 15 : 8,
              spreadRadius: _isHovered ? 3 : 1,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: widget.donor['name']!,
              child: CircleAvatar(
                backgroundColor: Colors.redAccent,
                radius: 35,
                child: Text(
                  widget.donor['bloodGroup']!,
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(widget.donor['name']!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('Blood Group: ${widget.donor['bloodGroup']}', style: TextStyle(color: Colors.black54)),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.redAccent
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Details",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
