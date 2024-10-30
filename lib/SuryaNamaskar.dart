import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Suryanamaskar extends StatelessWidget {
  const Suryanamaskar({super.key});

  @override
  Widget build(BuildContext context) {
    return Suryanamaskarpage();
  }
}

class Suryanamaskarpage extends StatefulWidget {
  const Suryanamaskarpage({super.key});

  @override
  State<Suryanamaskarpage> createState() => _SuryanamaskarpageState();
}

class _SuryanamaskarpageState extends State<Suryanamaskarpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A0129),
        title: Text(
          "Surya Namaskaras",
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
                "Surya Namaskar, or Sun Salutation, is a sequence of yoga postures (asanas) performed to honor the sun. It consists of 12 poses, each one flowing into the next with synchronized breathing. ",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Here are the names of the asanas in Surya Namaskar:",
                style: GoogleFonts.arima(
                    fontWeight: FontWeight.w600,
                    color: Colors.yellow,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1. Pranamasana (Prayer Pose)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "2. Hasta Uttanasana (Raised Arms Pose)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "3. Uttanasana (Standing Forward Bend)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "4. Ashwa Sanchalanasana (Equestrian Pose)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "5. Dandasana (Stick Pose)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "6. Ashtanga Namaskara (Salute with Eight Parts or Points)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "7. Bhujangasana (Cobra Pose)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "8. Adho Mukha Svanasana (Downward Facing Dog Pose)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "9.Ashwa Sanchalanasana (Equestrian Pose)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "10. Uttanasana (Standing Forward Bend)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "11. Hasta Uttanasana (Raised Arms Pose)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "12. Pranamasana (Prayer Pose)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1. Pranamasana (Prayer Pose)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730044387/image-removebg-preview_9_swwrgx.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "2. Hasta Uttanasana (Raised Arms Pose)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                "Benefits: Stretches the chest and abdomen, helps improve digestion, and increases lung capacity.",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730045475/image-removebg-preview_10_od5tsg.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "3. Uttanasana (Standing Forward Bend)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                "Benefits: Stretches the hamstrings, strengthens the legs, and increases blood flow to the head.",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730046343/image-removebg-preview_11_xbatqw.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "4. Ashwa Sanchalanasana (Equestrian Pose)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                "Benefits: Stretches the hip flexors, strengthens the legs, and improves balance and focus.",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730046590/image-removebg-preview_12_i4jodx.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "5. Dandasana (Stick Pose)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                "Benefits: Strengthens the arms and core, promotes alignment and endurance.",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730046789/image-removebg-preview_13_uchrwq.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "6. Ashtanga Namaskara (Salute with Eight Parts or Points)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                "Benefits: Builds arm, chest, and leg strength, improves flexibility in the back.",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730046863/image-removebg-preview_14_za4nea.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "7. Bhujangasana (Cobra Pose)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                "Benefits: Strengthens the spine, relieves back pain, and opens the chest for better breathing.",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730047016/image-removebg-preview_15_qutzgf.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "8. Adho Mukha Svanasana (Downward Facing Dog Pose)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                "Benefits: Stretches the hamstrings, shoulders, and calves, relieves tension, and increases circulation.",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730047147/image-removebg-preview_16_awkupm.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "9.Ashwa Sanchalanasana (Equestrian Pose)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                "Benefits: (Repeats the earlier benefits of pose #4)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730046590/image-removebg-preview_12_i4jodx.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "10. Uttanasana (Standing Forward Bend)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                "Benefits: (Repeats the earlier benefits of pose #3)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730046343/image-removebg-preview_11_xbatqw.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "11. Hasta Uttanasana (Raised Arms Pose)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                "Benefits: (Repeats the earlier benefits of pose #2)",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730045475/image-removebg-preview_10_od5tsg.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "12. Pranamasana (Prayer Pose)",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                "Benefits: Completes the cycle with mental clarity, calm, and a sense of gratitude.",
                style: GoogleFonts.arima(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Image.network(
                  "https://res.cloudinary.com/dsgjptfqj/image/upload/v1730044387/image-removebg-preview_9_swwrgx.png"),
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
