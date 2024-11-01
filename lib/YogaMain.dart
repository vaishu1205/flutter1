import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishipprj/Meditation.dart';
import 'package:ishipprj/PhysicalYoga.dart';
import 'package:lottie/lottie.dart';

class YogaMain extends StatelessWidget {
  const YogaMain({super.key});

  @override
  Widget build(BuildContext context) {
    return YogaPage1();
  }
}

class YogaPage1 extends StatefulWidget {
  const YogaPage1({super.key});

  @override
  State<YogaPage1> createState() => _YogaPage1State();
}

class _YogaPage1State extends State<YogaPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        title: Text(
          "Yoga",
          style: GoogleFonts.arima(
              color: Colors.yellow, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF1A0129),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset(
              'assets/Animation - 1729750536810.json',
              height: 300,
              width: 300,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Text(
                "What do you want to do today....",
                style: GoogleFonts.arima(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.yellow),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF9C27B0), Color(0xFF673AB7)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Meditation()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'Meditation',
                    style: GoogleFonts.arima(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF9C27B0), Color(0xFF673AB7)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Physicalyoga()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 75, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'Physical Yoga',
                    style: GoogleFonts.arima(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
