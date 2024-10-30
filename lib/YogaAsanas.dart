import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishipprj/Sitting.dart';
import 'package:ishipprj/SuryaNamaskar.dart';
import 'package:ishipprj/standing.dart';
import 'package:lottie/lottie.dart';

class YogaAsanas extends StatelessWidget {
  const YogaAsanas({super.key});

  @override
  Widget build(BuildContext context) {
    return YogaAsanasPage();
  }
}

class YogaAsanasPage extends StatefulWidget {
  const YogaAsanasPage({super.key});

  @override
  State<YogaAsanasPage> createState() => _YogaAsanasPageState();
}

class _YogaAsanasPageState extends State<YogaAsanasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        title: Text(
          "Yoga Asanas",
          style: GoogleFonts.arima(
              color: Colors.yellow, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF1A0129),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset("assets/Animation - 1730037812290.json"),
            SizedBox(height: 30),

            // Surya Namaskar button
            _buildGradientButton(
              label: "Surya Namaskar",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Suryanamaskar()),
                );
              },
            ),
            SizedBox(height: 20),

            // Standing Pose button
            _buildGradientButton(
              label: "Standing Pose",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Standing()),
                );
              },
            ),
            SizedBox(height: 20),

            // Sitting Poses button
            _buildGradientButton(
              label: "Sitting Poses",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sitting()),
                );
              },
            ),
            SizedBox(height: 20),
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
