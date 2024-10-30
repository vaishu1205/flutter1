import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxBreathing extends StatelessWidget {
  const BoxBreathing({super.key});

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
          ' Box Breathing',
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
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730026514/image-removebg-preview_6_fewxcf.png"),
              SizedBox(
                height: 30,
              ),
              Text(
                " Box Breathing",
                style: GoogleFonts.arima(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Box Breathing (also known as square breathing) is a breathing technique that promotes calmness and focus. It involves a four-part breath cycle, making it a popular practice for stress relief and improved concentration.",
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
                  "1.Sit comfortably: Find a position where you can relax and maintain a steady rhythm.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "2.Inhale through your nose for 4 counts: Breathe in slowly and deeply.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "3.Hold your breath for 4 counts: Keep your breath steady and calm.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "4.Exhale slowly through your mouth for 4 counts: Release all the air gently.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "5. Hold again for 4 counts: Pause and stay relaxed, then repeat the cycle.",
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
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730026321/image-removebg-preview_5_y57mk3.png"),
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
                padding: const EdgeInsets.only(right: 60),
                child: Text("> Reduces stress and anxiety",
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
                child: Text("> Enhances focus and clarity",
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
                child: Text("> Lowers heart rate and blood pressure",
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
                child: Text("> Promotes mindfulness and emotional balance",
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
