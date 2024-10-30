import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishipprj/BodyScan.dart';
import 'package:ishipprj/ChakraMeditation.dart';
import 'package:ishipprj/Transcendental.dart';
import 'package:ishipprj/VipassanaMeditation.dart';
import 'package:ishipprj/ZenMeditation.dart';
import 'package:ishipprj/mindfullness.dart';
import 'package:lottie/lottie.dart';

class Meditation extends StatelessWidget {
  const Meditation({super.key});

  @override
  Widget build(BuildContext context) {
    return MeditationPage();
  }
}

class MeditationPage extends StatefulWidget {
  const MeditationPage({super.key});

  @override
  State<MeditationPage> createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        title: Text(
          "Meditation",
          style: GoogleFonts.arima(color: Colors.yellow),
        ),
        backgroundColor: Color(0xFF1A0129),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset(
              'assets/Animation - 1729783546779.json',
              height: 300,
              width: 300,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45, right: 20),
              child: Text(
                "Meditation is not evasion,\nit is a serene encounter with reality..",
                style: GoogleFonts.arima(
                  fontSize: 23,
                  color: Colors.yellow,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 30),

            // Buttons with gradient styling
            _buildGradientButton(
              label: "Mindfulness Meditation",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MeditationApp()),
                );
              },
            ),
            SizedBox(height: 30),
            _buildGradientButton(
              label: "Transcendental Meditation",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Transcendental()),
                );
              },
            ),
            SizedBox(height: 30),
            _buildGradientButton(
              label: "BodyScan Meditation",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bodyscan()),
                );
              },
            ),
            SizedBox(height: 30),
            _buildGradientButton(
              label: "Zen Meditation",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ZenMeditation()),
                );
              },
            ),
            SizedBox(height: 30),
            _buildGradientButton(
              label: "Chakra Meditation",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChakraMeditation()),
                );
              },
            ),
            SizedBox(height: 30),
            _buildGradientButton(
              label: "Vipassana Meditation",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VipassanaMeditation()),
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
