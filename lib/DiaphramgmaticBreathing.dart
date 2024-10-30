import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Diaphramgmatic extends StatelessWidget {
  const Diaphramgmatic({super.key});

  @override
  Widget build(BuildContext context) {
    return Diaphramgmaticbreathing();
  }
}

class Diaphramgmaticbreathing extends StatefulWidget {
  const Diaphramgmaticbreathing({super.key});

  @override
  State<Diaphramgmaticbreathing> createState() =>
      _DiaphramgmaticbreathingState();
}

class _DiaphramgmaticbreathingState extends State<Diaphramgmaticbreathing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A0129),
        title: Text(
          'Diaphragmatic Breathing',
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
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730017055/image-removebg-preview_ds0rdq.png"),
              SizedBox(
                height: 30,
              ),
              Text(
                "Diaphragmatic Breathing",
                style: GoogleFonts.arima(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Diaphragmatic Breathing (also known as abdominal or deep breathing) is a technique that focuses on using the diaphragm for full, deep breaths. This method helps to increase oxygen flow, reduce stress, and promote relaxation.",
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
                  "1. Sit comfortably: Find a quiet place to sit in a comfortable, stable position with your back straight.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "2. Focus on your breath: Observe the natural rhythm of your breath, noticing each inhale and exhale.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "3. Observe sensations: Gradually move your attention through your body, observing any physical sensations without reacting to them.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "4. Witness thoughts without judgment: Allow thoughts and feelings to arise without attachment or aversion; simply observe them, then let them pass.",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "5. Stay present: Continue observing with a calm, open awareness, aiming to remain fully present in each moment.",
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
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730018444/image-removebg-preview_1_ql9lst.png"),
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
              Text("> Improves emotional resilience and self-awareness",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text("> Improves oxygen flow and lung efficiency",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text("> Lowers heart rate and blood pressure",
                    style: GoogleFonts.arima(
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey,
                        fontSize: 18)),
              ),
              SizedBox(
                height: 10,
              ),
              Text("> Increases mindfulness and body awareness",
                  style: GoogleFonts.arima(
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey,
                      fontSize: 18)),
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
