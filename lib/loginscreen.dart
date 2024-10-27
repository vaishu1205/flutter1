import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishipprj/SignUp.dart';
import 'package:ishipprj/UserLogin.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Loginscreen();
  }
}

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1A0129),
        body: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Container(
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                  color: Color(0xFF1A0129),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Image.network(
                    "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729576952/undraw_Happy_announcement_re_tsm0_z0hevr-removebg-preview_siignm.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Self-care is how you",
                style: GoogleFonts.arima(
                    fontSize: 28,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "take your power back",
                style: GoogleFonts.arima(
                    fontSize: 28,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Userlgin()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 248, 86, 46),
                        padding:
                            EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        'Log In',
                        style: GoogleFonts.arima(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 248, 86, 46),
                        padding:
                            EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        'Sign up',
                        style: GoogleFonts.arima(
                            color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => FirstScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 248, 86, 46),
                    padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'Login through Number',
                    style: GoogleFonts.arima(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
