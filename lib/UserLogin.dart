// // // import 'package:flutter/material.dart';
// // // import 'package:firebase_auth/firebase_auth.dart';
// // // import 'package:google_fonts/google_fonts.dart';

// // // class Userlgin extends StatelessWidget {
// // //   const Userlgin({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return LoginPage();
// // //   }
// // // }

// // // class LoginPage extends StatefulWidget {
// // //   @override
// // //   _LoginPageState createState() => _LoginPageState();
// // // }

// // // class _LoginPageState extends State<LoginPage> {
// // //   final TextEditingController _emailController = TextEditingController();
// // //   final TextEditingController _passwordController = TextEditingController();
// // //   final FirebaseAuth _auth = FirebaseAuth.instance;

// // //   Future<void> _login() async {
// // //     try {
// // //       await _auth.signInWithEmailAndPassword(
// // //         email: _emailController.text,
// // //         password: _passwordController.text,
// // //       );
// // //       // On successful login, navigate to home page or show success message
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         SnackBar(content: Text('Login Successful')),
// // //       );
// // //     } catch (e) {
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         SnackBar(content: Text('Login Failed: $e')),
// // //       );
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: const Color.fromARGB(255, 228, 158, 240),
// // //       appBar: AppBar(
// // //         title: Text('Login'),
// // //         backgroundColor: const Color.fromARGB(255, 228, 158, 240),
// // //       ),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: Column(
// // //           //   mainAxisAlignment: MainAxisAlignment.center,
// // //           children: [
// // //             Text(
// // //               "WELCOME",
// // //               style: GoogleFonts.arima(
// // //                   fontSize: 44,
// // //                   color: Colors.black,
// // //                   fontWeight: FontWeight.bold),
// // //             ),
// // //             SizedBox(
// // //               width: 10,
// // //             ),
// // //             Image.network(
// // //                 "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729614573/undraw_My_password_re_ydq7-removebg-preview_yvsucl.png"),
// // //             Padding(
// // //               padding: const EdgeInsets.only(top: 20),
// // //               child: TextField(
// // //                 controller: _emailController,
// // //                 decoration: InputDecoration(
// // //                   labelText: 'Username',
// // //                   labelStyle: GoogleFonts.arima(
// // //                       color: Colors.black, fontWeight: FontWeight.w600),
// // //                 ),
// // //               ),
// // //             ),
// // //             SizedBox(height: 16.0),
// // //             Padding(
// // //               padding: const EdgeInsets.all(8.0),
// // //               child: TextField(
// // //                 controller: _passwordController,
// // //                 decoration: InputDecoration(
// // //                   labelText: 'Password',
// // //                   labelStyle: GoogleFonts.arima(
// // //                       color: Colors.black, fontWeight: FontWeight.w600),
// // //                 ),
// // //                 obscureText: true,
// // //               ),
// // //             ),
// // //             SizedBox(height: 20),
// // //             Padding(
// // //               padding: const EdgeInsets.all(8.0),
// // //               child: ElevatedButton(
// // //                 onPressed: _login,
// // //                 style: ElevatedButton.styleFrom(
// // //                   backgroundColor: const Color.fromARGB(255, 248, 86, 46),
// // //                   padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
// // //                   shape: RoundedRectangleBorder(
// // //                     borderRadius: BorderRadius.circular(30.0),
// // //                   ),
// // //                 ),
// // //                 child: Text(
// // //                   'Login',
// // //                   style: GoogleFonts.arima(color: Colors.white),
// // //                 ),
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:ishipprj/SignUp.dart';
// import 'package:ishipprj/profile.dart';

// class Userlgin extends StatelessWidget {
//   const Userlgin({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LoginPage();
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Future<void> _login() async {
//     try {
//       UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//         email: _emailController.text,
//         password: _passwordController.text,
//       );

//       // If login is successful, navigate to the ProfilePage
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Login Successful')),
//       );

//       // Navigate to the profile page with user information
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ProfilePage(
//             email: userCredential.user!.email!,
//             age: 'N/A', // Replace with actual data if available
//             phone: 'N/A', // Replace with actual data if available
//             gender: 'N/A', // Replace with actual data if available
//           ),
//         ),
//       );
//     } catch (e) {
//       // If login fails, show a message and prompt to sign up if the account does not exist
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//             content:
//                 Text('Login Failed: Account does not exist. Please sign up.')),
//       );

//       // Navigate to the Signup page
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => Signup()),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 228, 158, 240),
//       appBar: AppBar(
//         title: Text('Login'),
//         backgroundColor: const Color.fromARGB(255, 228, 158, 240),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Text(
//               "WELCOME",
//               style: GoogleFonts.arima(
//                   fontSize: 44,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             Image.network(
//                 "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729614573/undraw_My_password_re_ydq7-removebg-preview_yvsucl.png"),
//             Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: TextField(
//                 controller: _emailController,
//                 decoration: InputDecoration(
//                   labelText: 'Username',
//                   labelStyle: GoogleFonts.arima(
//                       color: Colors.black, fontWeight: FontWeight.w600),
//                 ),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   labelStyle: GoogleFonts.arima(
//                       color: Colors.black, fontWeight: FontWeight.w600),
//                 ),
//                 obscureText: true,
//               ),
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 onPressed: _login,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color.fromARGB(255, 248, 86, 46),
//                   padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                   ),
//                 ),
//                 child: Text(
//                   'Login',
//                   style: GoogleFonts.arima(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'SignUp.dart';
// import 'profile.dart';

// class UserLogin extends StatelessWidget {
//   const UserLogin({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LoginPage();
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Future<void> _login() async {
//     try {
//       // Attempt to sign in with the provided email and password
//       UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//         email: _emailController.text,
//         password: _passwordController.text,
//       );

//       // Retrieve user data from Firestore based on the user ID
//       DocumentSnapshot userDoc = await _firestore
//           .collection('users')
//           .doc(userCredential.user!.uid)
//           .get();

//       if (userDoc.exists) {
//         // Extract user information from the Firestore document
//         String email = userDoc['email'];
//         String age = userDoc['age'];
//         String phone = userDoc['phone'];
//         String gender = userDoc['gender'];

//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//               content: Text('Login Successful', style: GoogleFonts.arima())),
//         );

//         // Navigate to the profile page with user information
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ProfilePage(
//               email: email,
//               age: age,
//               phone: phone,
//               gender: gender,
//             ),
//           ),
//         );
//       } else {
//         // If the user document does not exist, show an error message
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//               content: Text('User data not found', style: GoogleFonts.arima())),
//         );
//       }
//     } catch (e) {
//       // If login fails, show a message and prompt to sign up if the account does not exist
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//             content: Text(
//                 'Login Failed: Account does not exist. Please sign up.',
//                 style: GoogleFonts.arima())),
//       );

//       // Navigate to the Signup page
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => Signup()),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 228, 158, 240),
//       appBar: AppBar(
//         title: Text('Login', style: GoogleFonts.arima()),
//         backgroundColor: const Color.fromARGB(255, 228, 158, 240),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Text(
//               "WELCOME",
//               style: GoogleFonts.arima(
//                   fontSize: 44,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             Image.network(
//                 "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729614573/undraw_My_password_re_ydq7-removebg-preview_yvsucl.png"),
//             Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: TextField(
//                 controller: _emailController,
//                 decoration: InputDecoration(
//                   labelText: 'Username',
//                   labelStyle: GoogleFonts.arima(
//                       color: Colors.black, fontWeight: FontWeight.w600),
//                 ),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   labelStyle: GoogleFonts.arima(
//                       color: Colors.black, fontWeight: FontWeight.w600),
//                 ),
//                 obscureText: true,
//               ),
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 onPressed: _login,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color.fromARGB(255, 248, 86, 46),
//                   padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                   ),
//                 ),
//                 child: Text(
//                   'Login',
//                   style: GoogleFonts.arima(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishipprj/profile.dart';
import 'signup.dart';

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
                child: ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 248, 86, 46),
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: GoogleFonts.arima(color: Colors.white),
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
