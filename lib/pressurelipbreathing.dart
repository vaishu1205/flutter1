import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PurseBreathing extends StatelessWidget {
  const PurseBreathing({super.key});

  @override
  Widget build(BuildContext context) {
    return Breathing478breathing();
  }
}

class Breathing478breathing extends StatefulWidget {
  const Breathing478breathing({super.key});

  @override
  State<Breathing478breathing> createState() => _DiaphramgmaticbreathingState();
}

class _DiaphramgmaticbreathingState extends State<Breathing478breathing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A0129),
        title: Text(
          ' Pursed-Lip Breathing',
          style: GoogleFonts.arima(
              color: Colors.yellow, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730027335/image-removebg-preview_8_r10cz4.png"),
              SizedBox(
                height: 30,
              ),
              Text(
                "Pursed-Lip Breathing",
                style: GoogleFonts.arima(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Pursed-Lip Breathing is a simple breathing technique that slows down the breath and helps improve oxygen flow. Often used to ease shortness of breath, it can also promote relaxation and reduce anxiety.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 20,
              ),
              Text(
                "How to Practice:",
                style: GoogleFonts.arima(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "1.Inhale slowly through your nose: Take a deep, gentle breath for 2 count",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "2.Purse your lips: Shape your lips as if you’re about to whistle.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "3.Exhale slowly through your pursed lips: Breathe out slowly for about 4 counts, keeping the exhale steady.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "4.Repeat: Continue for a few minutes, focusing on a longer, controlled exhale.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730027143/image-removebg-preview_7_s5jpxq.png"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Benefits:",
                style: GoogleFonts.arima(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text("> Reduces shortness of breath",
                    style: GoogleFonts.arima(
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey,
                        fontSize: 18)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Text("> Enhances oxygen exchange",
                    style: GoogleFonts.arima(
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey,
                        fontSize: 18)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text("> Slows down the breathing rate",
                    style: GoogleFonts.arima(
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey,
                        fontSize: 18)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("> Helps manage stress and promotes relaxation",
                    style: GoogleFonts.arima(
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey,
                        fontSize: 18)),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
