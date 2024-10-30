import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sitting extends StatelessWidget {
  const Sitting({super.key});

  @override
  Widget build(BuildContext context) {
    return Sittingpage();
  }
}

class Sittingpage extends StatefulWidget {
  const Sittingpage({super.key});

  @override
  State<Sittingpage> createState() => _SuryanamaskarpageState();
}

class _SuryanamaskarpageState extends State<Sittingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A0129),
        title: Text(
          "Sitting ",
          style: GoogleFonts.arima(
              color: Colors.yellow, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Sitting Asanas",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Here are the names of the asanas in Sitting Asana",
                style: GoogleFonts.arima(
                    fontWeight: FontWeight.w600,
                    color: Colors.yellow,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1 . Padmasana (Lotus Pose) ",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "2. Sukhasana (Easy Pose)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "3. Baddha Konasana (Bound Angle Pose) ",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1. Padmasana (Lotus Pose)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                " – Traditional pose for meditation, calms the mind.",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730207916/image-removebg-preview_21_kxojoy.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "2. Sukhasana (Easy Pose)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                "  – Simple seated posture for meditation and relaxation.",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730207973/image-removebg-preview_22_o7yuj3.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "3. Baddha Konasana (Bound Angle Pose) ",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                " – Opens hips and groin.",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730208106/image-removebg-preview_23_nlzn29.png"),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
