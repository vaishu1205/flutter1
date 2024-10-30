// import 'package:flutter/material.dart';

// class Startingpage extends StatelessWidget {
//   const Startingpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return StartingPage();
//   }
// }

// class StartingPage extends StatefulWidget {
//   const StartingPage({super.key});

//   @override
//   State<StartingPage> createState() => _StartingaPageState();
// }

// class _StartingaPageState extends State<StartingPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.purpleAccent,
//       body: Container(
//         color: const Color.fromARGB(255, 228, 158, 240),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.network(
//                 "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729529425/undraw_workout_gcgu_an2r07.png")
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ishipprj/loginscreen.dart';
import 'package:lottie/lottie.dart';

class Startingpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StartingPage();
  }
}

class StartingPage extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<StartingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    // Start the animation
    _animationController.forward();

    // Navigate to login page after the animation
    Timer(Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisSize: MainAxisSize.min,
            children: [
              // Image.network(
              //     "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729529425/undraw_workout_gcgu_an2r07.png"),
              Lottie.asset(
                'assets/Animation - 1729615841840.json', // path to your .json file
              ),

              Text(
                "EmotiCare",
                style: GoogleFonts.arima(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
