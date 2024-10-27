// // // import 'package:flutter/material.dart';
// // // import 'package:firebase_auth/firebase_auth.dart';
// // // import 'package:google_fonts/google_fonts.dart';

// // // class Signup extends StatelessWidget {
// // //   const Signup({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SignupPage();
// // //   }
// // // }

// // // class SignupPage extends StatefulWidget {
// // //   @override
// // //   _SignupPageState createState() => _SignupPageState();
// // // }

// // // class _SignupPageState extends State<SignupPage> {
// // //   final TextEditingController _emailController = TextEditingController();
// // //   final TextEditingController _passwordController = TextEditingController();
// // //   final FirebaseAuth _auth = FirebaseAuth.instance;

// // //   Future<void> _signup() async {
// // //     try {
// // //       await _auth.createUserWithEmailAndPassword(
// // //         email: _emailController.text,
// // //         password: _passwordController.text,
// // //       );
// // //       // On successful signup, navigate to the login page or show a success message
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         SnackBar(content: Text('Signup Successful')),
// // //       );
// // //       Navigator.pop(context); // Go back to login page
// // //     } catch (e) {
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         SnackBar(content: Text('Signup Failed: $e')),
// // //       );
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: const Color.fromARGB(255, 228, 158, 240),
// // //       appBar: AppBar(
// // //         title: Text('Sign Up'),
// // //         backgroundColor: const Color.fromARGB(255, 228, 158, 240),
// // //       ),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: Column(
// // //           //      mainAxisAlignment: MainAxisAlignment.center,
// // //           children: [
// // //             SizedBox(
// // //               width: 10,
// // //             ),
// // //             Image.network(
// // //                 "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729659925/undraw_undraw_undraw_undraw_sign_up_ln1s_-1-_s4bc_-1-_ee41__1__kf4d-removebg-preview_qu702c.png"),
// // //             TextField(
// // //               controller: _emailController,
// // //               decoration: InputDecoration(
// // //                 labelText: 'Username',
// // //               ),
// // //             ),
// // //             SizedBox(height: 16.0),
// // //             TextField(
// // //               controller: _passwordController,
// // //               decoration: InputDecoration(
// // //                 labelText: 'Password',
// // //               ),
// // //               obscureText: true,
// // //             ),
// // //             SizedBox(height: 20),
// // //             Padding(
// // //               padding: const EdgeInsets.all(8.0),
// // //               child: ElevatedButton(
// // //                 onPressed: _signup,
// // //                 style: ElevatedButton.styleFrom(
// // //                   backgroundColor: const Color.fromARGB(255, 248, 86, 46),
// // //                   padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
// // //                   shape: RoundedRectangleBorder(
// // //                     borderRadius: BorderRadius.circular(30.0),
// // //                   ),
// // //                 ),
// // //                 child: Text(
// // //                   'Sign Up',
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

// // import 'package:flutter/material.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:ishipprj/profile.dart';

// // class Signup extends StatelessWidget {
// //   const Signup({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return SignupPage();
// //   }
// // }

// // class SignupPage extends StatefulWidget {
// //   @override
// //   _SignupPageState createState() => _SignupPageState();
// // }

// // class _SignupPageState extends State<SignupPage> {
// //   final TextEditingController _emailController = TextEditingController();
// //   final TextEditingController _passwordController = TextEditingController();
// //   final TextEditingController _confirmPasswordController =
// //       TextEditingController();
// //   final TextEditingController _ageController = TextEditingController();
// //   final TextEditingController _phoneController = TextEditingController();
// //   String _gender = 'Male';
// //   final FirebaseAuth _auth = FirebaseAuth.instance;

// //   Future<void> _signup() async {
// //     if (_passwordController.text != _confirmPasswordController.text) {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Passwords do not match')),
// //       );
// //       return;
// //     }

// //     try {
// //       await _auth.createUserWithEmailAndPassword(
// //         email: _emailController.text,
// //         password: _passwordController.text,
// //       );

// //       // On successful signup, show a success message
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Signup Successful')),
// //       );

// //       // Navigate to the profile page with user information
// //       Navigator.push(
// //         context,
// //         MaterialPageRoute(
// //           builder: (context) => ProfilePage(
// //             email: _emailController.text,
// //             age: _ageController.text,
// //             phone: _phoneController.text,
// //             gender: _gender,
// //           ),
// //         ),
// //       );
// //     } catch (e) {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Signup Failed: $e')),
// //       );
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: const Color.fromARGB(255, 228, 158, 240),
// //       appBar: AppBar(
// //         title: Text('Sign Up'),
// //         backgroundColor: const Color.fromARGB(255, 228, 158, 240),
// //       ),
// //       body: SingleChildScrollView(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           children: [
// //             SizedBox(
// //               height: 150,
// //               child: Image.network(
// //                 "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729659925/undraw_undraw_undraw_undraw_sign_up_ln1s_-1-_s4bc_-1-_ee41__1__kf4d-removebg-preview_qu702c.png",
// //                 fit: BoxFit.contain,
// //               ),
// //             ),
// //             TextField(
// //               controller: _emailController,
// //               decoration: InputDecoration(labelText: 'Email'),
// //             ),
// //             SizedBox(height: 16.0),
// //             TextField(
// //               controller: _passwordController,
// //               decoration: InputDecoration(labelText: 'Password'),
// //               obscureText: true,
// //             ),
// //             SizedBox(height: 16.0),
// //             TextField(
// //               controller: _confirmPasswordController,
// //               decoration: InputDecoration(labelText: 'Confirm Password'),
// //               obscureText: true,
// //             ),
// //             SizedBox(height: 16.0),
// //             TextField(
// //               controller: _ageController,
// //               decoration: InputDecoration(labelText: 'Age'),
// //               keyboardType: TextInputType.number,
// //             ),
// //             SizedBox(height: 16.0),
// //             TextField(
// //               controller: _phoneController,
// //               decoration: InputDecoration(labelText: 'Phone Number'),
// //               keyboardType: TextInputType.phone,
// //             ),
// //             SizedBox(height: 16.0),
// //             DropdownButtonFormField<String>(
// //               value: _gender,
// //               items: ['Male', 'Female', 'Other'].map((String value) {
// //                 return DropdownMenuItem<String>(
// //                   value: value,
// //                   child: Text(value),
// //                 );
// //               }).toList(),
// //               onChanged: (newValue) {
// //                 setState(() {
// //                   _gender = newValue!;
// //                 });
// //               },
// //               decoration: InputDecoration(labelText: 'Gender'),
// //             ),
// //             SizedBox(height: 20),
// //             Padding(
// //               padding: const EdgeInsets.all(8.0),
// //               child: ElevatedButton(
// //                 onPressed: _signup,
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: const Color.fromARGB(255, 248, 86, 46),
// //                   padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(30.0),
// //                   ),
// //                 ),
// //                 child: Text(
// //                   'Sign Up',
// //                   style: GoogleFonts.arima(color: Colors.white),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       )
// //     );
// //   }
// // }

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore
import 'package:google_fonts/google_fonts.dart';
import 'package:ishipprj/profile.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SignupPage();
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  String _gender = 'Male';
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signup() async {
    if (_passwordController.text != _confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Passwords do not match')),
      );
      return;
    }

    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // Save additional user information to Firestore
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({
        'name': _nameController.text,
        'email': _emailController.text,
        'age': _ageController.text,
        'phone': _phoneController.text,
        'gender': _gender,
      });

      // On successful signup, show a success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Signup Successful')),
      );

      // Navigate to the profile page with user information
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfilePage(
            name: _nameController.text,
            email: _emailController.text,
            age: _ageController.text,
            phone: _phoneController.text,
            gender: _gender,
          ),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Signup Failed: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: GoogleFonts.arima(color: Colors.yellow),
        ),
        backgroundColor: Color(0xFF1A0129),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: Image.network(
                "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729659925/undraw_undraw_undraw_undraw_sign_up_ln1s_-1-_s4bc_-1-_ee41__1__kf4d-removebg-preview_qu702c.png",
                fit: BoxFit.contain,
              ),
            ),
            Text(
              "Create Your Account",
              style: GoogleFonts.arima(color: Colors.yellow, fontSize: 20),
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'name',
                prefixIcon: Icon(Icons.person_outline),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(
                labelText: 'Age',
                prefixIcon: Icon(Icons.cake),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                prefixIcon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16.0),
            DropdownButtonFormField<String>(
              value: _gender,
              items: ['Male', 'Female', 'Other'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _gender = newValue!;
                });
              },
              decoration: InputDecoration(
                labelText: 'Gender',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: _signup,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 248, 86, 46),
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.arima(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:ishipprj/profile.dart';

// class Signup extends StatelessWidget {
//   const Signup({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SignupPage();
//   }
// }

// class SignupPage extends StatefulWidget {
//   @override
//   _SignupPageState createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmPasswordController =
//       TextEditingController();
//   final TextEditingController _ageController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   String _gender = 'Male';
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Future<void> _signup() async {
//     if (_passwordController.text != _confirmPasswordController.text) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Passwords do not match')),
//       );
//       return;
//     }

//     try {
//       UserCredential userCredential =
//           await _auth.createUserWithEmailAndPassword(
//         email: _emailController.text,
//         password: _passwordController.text,
//       );

//       // Save additional user information to Firestore
//       await FirebaseFirestore.instance
//           .collection('users')
//           .doc(userCredential.user!.uid)
//           .set({
//         'email': _emailController.text,
//         'age': _ageController.text,
//         'phone': _phoneController.text,
//         'gender': _gender,
//       });

//       // On successful signup, show a success message
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Signup Successful')),
//       );

//       // Navigate to the profile page with user information
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ProfilePage(
//             email: _emailController.text,
//             age: _ageController.text,
//             phone: _phoneController.text,
//             gender: _gender,
//           ),
//         ),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Signup Failed: $e')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 228, 158, 240),
//       appBar: AppBar(
//         title: Text('Sign Up', style: GoogleFonts.lato()),
//         backgroundColor: const Color.fromARGB(255, 228, 158, 240),
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 150,
//               child: Image.network(
//                 "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729659925/undraw_undraw_undraw_undraw_sign_up_ln1s_-1-_s4bc_-1-_ee41__1__kf4d-removebg-preview_qu702c.png",
//                 fit: BoxFit.contain,
//               ),
//             ),
//             Card(
//               elevation: 5,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15)),
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   children: [
//                     TextField(
//                       controller: _emailController,
//                       decoration: InputDecoration(
//                         labelText: 'Email',
//                         prefixIcon: Icon(Icons.email),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 16.0),
//                     TextField(
//                       controller: _passwordController,
//                       decoration: InputDecoration(
//                         labelText: 'Password',
//                         prefixIcon: Icon(Icons.lock),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                       ),
//                       obscureText: true,
//                     ),
//                     SizedBox(height: 16.0),
//                     TextField(
//                       controller: _confirmPasswordController,
//                       decoration: InputDecoration(
//                         labelText: 'Confirm Password',
//                         prefixIcon: Icon(Icons.lock_outline),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                       ),
//                       obscureText: true,
//                     ),
//                     SizedBox(height: 16.0),
//                     TextField(
//                       controller: _ageController,
//                       decoration: InputDecoration(
//                         labelText: 'Age',
//                         prefixIcon: Icon(Icons.cake),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                       ),
//                       keyboardType: TextInputType.number,
//                     ),
//                     SizedBox(height: 16.0),
//                     TextField(
//                       controller: _phoneController,
//                       decoration: InputDecoration(
//                         labelText: 'Phone Number',
//                         prefixIcon: Icon(Icons.phone),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                       ),
//                       keyboardType: TextInputType.phone,
//                     ),
//                     SizedBox(height: 16.0),
//                     DropdownButtonFormField<String>(
//                       value: _gender,
//                       items: ['Male', 'Female', 'Other'].map((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                       onChanged: (newValue) {
//                         setState(() {
//                           _gender = newValue!;
//                         });
//                       },
//                       decoration: InputDecoration(
//                         labelText: 'Gender',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 onPressed: _signup,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color.fromARGB(255, 248, 86, 46),
//                   padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                   ),
//                   elevation: 10,
//                 ),
//                 child: Text(
//                   'Sign Up',
//                   style: GoogleFonts.arima(color: Colors.white, fontSize: 18),
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
// import 'package:ishipprj/profile.dart';

// class Signup extends StatelessWidget {
//   const Signup({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SignupPage();
//   }
// }

// class SignupPage extends StatefulWidget {
//   @override
//   _SignupPageState createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmPasswordController =
//       TextEditingController();
//   final TextEditingController _ageController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   String _gender = 'Male';
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Future<void> _signup() async {
//     if (_passwordController.text != _confirmPasswordController.text) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Passwords do not match')),
//       );
//       return;
//     }

//     try {
//       UserCredential userCredential =
//           await _auth.createUserWithEmailAndPassword(
//         email: _emailController.text,
//         password: _passwordController.text,
//       );

//       // Save additional user information to Firestore
//       await FirebaseFirestore.instance
//           .collection('users')
//           .doc(userCredential.user!.uid)
//           .set({
//         'email': _emailController.text,
//         'age': _ageController.text,
//         'phone': _phoneController.text,
//         'gender': _gender,
//       });

//       // On successful signup, show a success message
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Signup Successful')),
//       );

//       // Navigate to the profile page with user information
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ProfilePage(
//             email: _emailController.text,
//             age: _ageController.text,
//             phone: _phoneController.text,
//             gender: _gender,
//           ),
//         ),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Signup Failed: $e')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 228, 158, 240),
//       appBar: AppBar(
//         title: Text('Sign Up', style: GoogleFonts.lato()),
//         backgroundColor: const Color.fromARGB(255, 228, 158, 240),
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Custom Header
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 232, 153, 246),
//                 borderRadius: BorderRadius.circular(15.0),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.2),
//                     spreadRadius: 2,
//                     blurRadius: 8,
//                     offset: Offset(0, 4), // changes position of shadow
//                   ),
//                 ],
//               ),
//               child: Column(
//                 children: [
//                   Image.network(
//                     "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729698331/undraw_Personal_info_re_ur1n-removebg-preview_htuxr4.png",
//                     // color: Color.fromARGB(255, 248, 86, 46)
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Welcome!',
//                     style: GoogleFonts.arima(
//                         fontSize: 26, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     'Create an account to get started',
//                     style: GoogleFonts.arima(
//                         fontSize: 16,
//                         color: Colors.grey[600],
//                         fontWeight: FontWeight.w600),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 30),
//             Card(
//               elevation: 5,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   children: [
//                     TextField(
//                       controller: _emailController,
//                       decoration: InputDecoration(
//                         labelText: 'Email',
//                         prefixIcon: Icon(Icons.email),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 16.0),
//                     TextField(
//                       controller: _passwordController,
//                       decoration: InputDecoration(
//                         labelText: 'Password',
//                         prefixIcon: Icon(Icons.lock),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                       ),
//                       obscureText: true,
//                     ),
//                     SizedBox(height: 16.0),
//                     TextField(
//                       controller: _confirmPasswordController,
//                       decoration: InputDecoration(
//                         labelText: 'Confirm Password',
//                         prefixIcon: Icon(Icons.lock_outline),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                       ),
//                       obscureText: true,
//                     ),
//                     SizedBox(height: 16.0),
//                     TextField(
//                       controller: _ageController,
//                       decoration: InputDecoration(
//                         labelText: 'Age',
//                         prefixIcon: Icon(Icons.cake),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                       ),
//                       keyboardType: TextInputType.number,
//                     ),
//                     SizedBox(height: 16.0),
//                     TextField(
//                       controller: _phoneController,
//                       decoration: InputDecoration(
//                         labelText: 'Phone Number',
//                         prefixIcon: Icon(Icons.phone),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                       ),
//                       keyboardType: TextInputType.phone,
//                     ),
//                     SizedBox(height: 16.0),
//                     DropdownButtonFormField<String>(
//                       value: _gender,
//                       items: ['Male', 'Female', 'Other'].map((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                       onChanged: (newValue) {
//                         setState(() {
//                           _gender = newValue!;
//                         });
//                       },
//                       decoration: InputDecoration(
//                         labelText: 'Gender',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 onPressed: _signup,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color.fromARGB(255, 248, 86, 46),
//                   padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                   ),
//                   elevation: 10,
//                 ),
//                 child: Text(
//                   'Sign Up',
//                   style: GoogleFonts.arima(color: Colors.white, fontSize: 18),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
