import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Breathing478 extends StatelessWidget {
  const Breathing478({super.key});

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
          '4-7-8 Breathing',
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
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730025620/image-removebg-preview_3_gqmccw.png"),
              SizedBox(
                height: 30,
              ),
              Text(
                "4-7-8 Breathing",
                style: GoogleFonts.arima(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "4-7-8 Breathing is a simple relaxation technique that uses a specific breath pattern to calm the mind and body. It’s often used to reduce anxiety, improve focus, and promote better sleep.",
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
                  "1. Sit or lie down comfortably: Find a relaxed position with a straight spine.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "2.Inhale through your nose for 4 counts: Breathe in deeply, filling your lungs.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "3. Hold your breath for 7 counts: Keep your breath in, allowing your body to absorb the oxygen.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "4. Exhale slowly through your mouth for 8 counts: Empty your lungs completely, making a whooshing sound.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text("5. Repeat: Practice this cycle 4 times, or as needed.",
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
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730025102/image-removebg-preview_2_mja2yy.png"),
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
                padding: const EdgeInsets.only(right: 20),
                child: Text("> Reduces stress and anxiety quickly",
                    style: GoogleFonts.arima(
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey,
                        fontSize: 18)),
              ),
              SizedBox(
                height: 10,
              ),
              Text("> Promotes relaxation and sleep quality",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(),
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
                padding: const EdgeInsets.only(right: 20),
                child: Text("> Enhances focus and mental clarity",
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
