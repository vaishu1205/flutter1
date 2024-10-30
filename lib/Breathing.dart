import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishipprj/4-7-8Breathing.dart';
import 'package:ishipprj/BoxBreathing.dart';
import 'package:ishipprj/DiaphramgmaticBreathing.dart';
import 'package:ishipprj/pressurelipbreathing.dart';
import 'package:lottie/lottie.dart';

class Breathing extends StatelessWidget {
  const Breathing({super.key});

  @override
  Widget build(BuildContext context) {
    return BreathingExercise();
  }
}

class BreathingExercise extends StatefulWidget {
  const BreathingExercise({super.key});

  @override
  State<BreathingExercise> createState() => _BreathingExerciseState();
}

class _BreathingExerciseState extends State<BreathingExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        title: Text(
          "Breathing",
          style: GoogleFonts.arima(
              color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF1A0129),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset("assets/Animation - 1730014513926.json",
                height: 400, width: 800),
            SizedBox(height: 40),

            // Buttons with gradient styling
            _buildGradientButton(
              label: "Diaphragmatic Breathing",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Diaphramgmatic()),
                );
              },
            ),
            SizedBox(height: 40),
            _buildGradientButton(
              label: "4-7-8 Breathing",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Breathing478()),
                );
              },
            ),
            SizedBox(height: 40),
            _buildGradientButton(
              label: "Box Breathing",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BoxBreathing()),
                );
              },
            ),
            SizedBox(height: 40),
            _buildGradientButton(
              label: "Pursed Lip Breathing",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PurseBreathing()),
                );
              },
            ),
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
