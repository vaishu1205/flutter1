import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ishipprj/SignUp.dart';
import 'package:ishipprj/UserLogin.dart';
import 'package:ishipprj/new_home.dart';
import 'package:ishipprj/startingpage.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Loginscreen();
  }
}

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  Widget _buildGradientButton({
    required String text,
    required VoidCallback onPressed,
    double horizontalPadding = 50,
    double verticalPadding = 20,
  }) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF9C27B0), Color(0xFF673AB7)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(40.0),
        boxShadow: [
          BoxShadow(
            color: Colors.purple.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(30.0),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            child: Text(
              text,
              style: GoogleFonts.arima(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0129),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 80),
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: const Color(0xFF1A0129),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(
                  "assets/self_care.png",
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Colors.yellow, Colors.amber],
                ).createShader(bounds),
                child: Text(
                  "Self-care is how you",
                  style: GoogleFonts.arima(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Colors.yellow, Colors.amber],
                ).createShader(bounds),
                child: Text(
                  "take your power back",
                  style: GoogleFonts.arima(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildGradientButton(
                    text: 'Log In',
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Userlgin()),
                    ),
                  ),
                  _buildGradientButton(
                    text: 'Sign up',
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              _buildGradientButton(
                text: 'Login with Number',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewHome()),
                ),
                horizontalPadding: 90,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
