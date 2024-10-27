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
                'assets/Animation - 1729783546779.json', height: 300,
                width: 300,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MeditationApp()),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Transcendental()),
                  );
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bodyscan()),
                  );
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
                        "  BodyScan Meditation",
                        style: GoogleFonts.arima(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 80,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ZenMeditation()),
                  );
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
                        "   Zen Meditation",
                        style: GoogleFonts.arima(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 120,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChakraMeditation()),
                  );
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
                        "   Chakra Meditation",
                        style: GoogleFonts.arima(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 90,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VipassanaMeditation()),
                  );
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
                        "   Vipassana Meditation",
                        style: GoogleFonts.arima(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 70,
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
