import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Standing extends StatelessWidget {
  const Standing({super.key});

  @override
  Widget build(BuildContext context) {
    return Standingpage();
  }
}

class Standingpage extends StatefulWidget {
  const Standingpage({super.key});

  @override
  State<Standingpage> createState() => _SuryanamaskarpageState();
}

class _SuryanamaskarpageState extends State<Standingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A0129),
        title: Text(
          "Standing ",
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
                "Standing Asanas",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Here are the names of the asanas in Standing Asana",
                style: GoogleFonts.arima(
                    fontWeight: FontWeight.w600,
                    color: Colors.yellow,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1 . Tadasana (Mountain Pose) ",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "2. Vrikshasana (Tree Pose) ",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "3. Utkatasana (Chair Pose)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1. Tadasana (Mountain Pose)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "– Foundation for other poses, improves posture and balance.",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730206309/image-removebg-preview_17_bhzxzn.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "2. Vrikshasana (Tree Pose)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                " – Enhances balance and focus.",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730206829/image-removebg-preview_18_qgsjae.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "3. Utkatasana (Chair Pose) ",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                "– Strengthens thighs and spine.",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730207360/image-removebg-preview_20_hqe0kh.png"),
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
