import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart';
import 'profile.dart';

class Userlgin extends StatelessWidget {
  const Userlgin({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _login() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // Fetch additional user details from Firestore
      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .get();
      String name = userDoc["name"] ?? '';
      String age = userDoc['age'] ?? '';
      String phone = userDoc['phone'] ?? '';
      String gender = userDoc['gender'] ?? 'N/A';

      // Navigate to the profile page with fetched data
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfilePage(
            name: name,
            email: userCredential.user!.email!,
            age: age,
            phone: phone,
            gender: gender,
          ),
        ),
      );
    } catch (e) {
      // Handle login errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login Failed: $e')),
      );

      // Navigate to the Signup page if login fails
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Signup()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        title: Text(
          'Login',
          style: GoogleFonts.arima(color: Colors.yellow),
        ),
        backgroundColor: Color(0xFF1A0129),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "You'r Better Than Yesterday",
                style: GoogleFonts.arima(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              SizedBox(
                width: 10,
              ),
              Image.network(
                "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729614573/undraw_My_password_re_ydq7-removebg-preview_yvsucl.png",
                height: 250,
                width: 250,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextField(
                  style: GoogleFonts.arima(color: Colors.blueGrey),
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: GoogleFonts.arima(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: GoogleFonts.arima(color: Colors.blueGrey),
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: GoogleFonts.arima(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF9C27B0), Color(0xFF673AB7)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                    ),
                    child: Text(
                      'Login',
                      style: GoogleFonts.arima(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
