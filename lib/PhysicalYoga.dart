import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishipprj/Breathing.dart';
import 'package:ishipprj/YogaAsanas.dart';
import 'package:lottie/lottie.dart';

class Physicalyoga extends StatelessWidget {
  const Physicalyoga({super.key});

  @override
  Widget build(BuildContext context) {
    return PhysicalyogaScreen();
  }
}

class PhysicalyogaScreen extends StatefulWidget {
  const PhysicalyogaScreen({super.key});

  @override
  State<PhysicalyogaScreen> createState() => _PhysicalyogaScreenState();
}

class _PhysicalyogaScreenState extends State<PhysicalyogaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        title: Text(
          "Physical Yoga",
          style: GoogleFonts.arima(color: Colors.yellow),
        ),
        backgroundColor: Color(0xFF1A0129),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset(
              'assets/Animation - 1729871933192.json',
              height: 400,
              width: 400,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45, right: 20),
              child: Text(
                "Yoga is the perfect opportunity \n to be curious about who you\n are....",
                style: GoogleFonts.arima(
                  fontSize: 23,
                  color: Colors.yellow,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 30),

            // Breathing Exercise button
            _buildGradientButton(
              label: "Breathing Exercise",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Breathing()),
                );
              },
            ),
            SizedBox(height: 30),

            // Yoga Asanas button
            _buildGradientButton(
              label: "Yoga Asanas",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => YogaAsanas()),
                );
              },
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // Helper method to create a gradient button with text and an arrow icon
  Widget _buildGradientButton(
      {required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 280,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF9C27B0), Color(0xFF673AB7)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  label,
                  style: GoogleFonts.arima(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
