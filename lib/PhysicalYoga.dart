import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                'assets/Animation - 1729871933192.json', height: 400,
                width: 400,
                // path to your .json file
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, right: 20),
                child: Text(
                  "Meditation is not evasion ,\nit is a serene encounter with  reality..",
                  style: GoogleFonts.arima(
                    fontSize: 23,
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MeditationApp()),
                  // );
                },
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 252, 114, 79),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Row(
                    children: [
                      Text(
                        "   Mindfulness Meditation",
                        style: GoogleFonts.arima(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      )
                    ],
                  )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Transcendental()),
                  // );
                },
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 252, 114, 79),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Row(
                    children: [
                      Text(
                        "  Transcendental Meditation",
                        style: GoogleFonts.arima(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      )
                    ],
                  )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
