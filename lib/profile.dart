// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class ProfilePage extends StatelessWidget {
//   final String email;
//   final String age;
//   final String phone;
//   final String gender;

//   const ProfilePage({
//     super.key,
//     required this.email,
//     required this.age,
//     required this.phone,
//     required this.gender,
//   });

//   @override  
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 228, 158, 240),
//       appBar: AppBar(
//         title: Text('Profile'),
//         backgroundColor: const Color.fromARGB(255, 228, 158, 240),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Profile Information',
//               style:
//                   GoogleFonts.arima(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 16),
//             Text('Email: $email', style: GoogleFonts.arima(fontSize: 18)),
//             SizedBox(height: 8),
//             Text('Age: $age', style: GoogleFonts.arima(fontSize: 18)),
//             SizedBox(height: 8),
//             Text('Phone Number: $phone',
//                 style: GoogleFonts.arima(fontSize: 18)),
//             SizedBox(height: 8),
//             Text('Gender: $gender', style: GoogleFonts.arima(fontSize: 18)),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context); // Navigate back to the previous screen
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color.fromARGB(255, 248, 86, 46),
//                 padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                 ),
//               ),
//               child: Text(
//                 'Back to Home',
//                 style: GoogleFonts.arima(color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishipprj/new_home.dart';

class ProfilePage extends StatelessWidget {
  final String email;
  final String age;
  final String phone;
  final String gender;
  final String name;

  const ProfilePage({
    super.key,
    required this.email,
    required this.age,
    required this.phone,
    required this.gender,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFEDE7F6), // Light purple background
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        title: Text('Profile', style: GoogleFonts.arima(color: Colors.yellow)),
        backgroundColor: Color(0xFF1A0129),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile_picture.png'),
              backgroundColor: Colors.grey[300],
            ),
            SizedBox(height: 16),
            // Profile Information Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 8,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Profile Information',
                      style: GoogleFonts.arima(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6A1B9A), // Deep purple
                      ),
                    ),
                    Divider(color: Colors.grey[400]),
                    SizedBox(height: 12),
                    _buildInfoRow('Name', name),
                    SizedBox(height: 8),
                    _buildInfoRow('Email', email),
                    SizedBox(height: 8),
                    _buildInfoRow('Age', age),
                    SizedBox(height: 8),
                    _buildInfoRow('Phone', phone),
                    SizedBox(height: 8),
                    _buildInfoRow('Gender', gender),
                  ],
                ),
              ),
            ),
            // Back Button

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewHome()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 119, 56, 137), // Deep pink
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              icon: Icon(Icons.arrow_back, color: Colors.white),
              label: Text(
                'Home Screen',
                style: GoogleFonts.arima(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget to build individual profile information row
  Widget _buildInfoRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.arima(fontSize: 18, color: Colors.grey[700]),
        ),
        Text(
          value,
          style: GoogleFonts.arima(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4A148C), // Deep purple text color
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:ishipprj/profile_screen.dart';
// import 'dart:io';
//  // Your custom screens go here
// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Profile();
//   }
// }

// class Profile extends StatefulWidget {
//   const Profile({Key? key}) : super(key: key);

//   @override
//   _ProfileState createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   File? _profileImage;

//   Future<void> _pickProfileImage() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       setState(() {
//         _profileImage = File(pickedFile.path);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF1A0129), // Background color from ProfilePage
//       appBar: AppBar(
//         title: Text('Profile', style: GoogleFonts.arima(color: Colors.yellow)),
//         backgroundColor: Color(0xFF1A0129),
//         elevation: 0,
//         iconTheme: IconThemeData(color: Colors.black),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Profile Picture
//             GestureDetector(
//               onTap: _pickProfileImage,
//               child: CircleAvatar(
//                 radius: 60,
//                 backgroundImage: _profileImage != null
//                     ? FileImage(_profileImage!) as ImageProvider
//                     : AssetImage('assets/profile_picture.png'),
//                 backgroundColor: Colors.grey[300],
//               ),
//             ),
//             SizedBox(height: 16),
//             Text(
//               "M Preethi",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             SizedBox(height: 16),
//             // Profile Information Card
//             Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20.0),
//               ),
//               elevation: 8,
//               margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Profile Information',
//                       style: GoogleFonts.arima(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF6A1B9A), // Deep purple
//                       ),
//                     ),
//                     Divider(color: Colors.grey[400]),
//                     SizedBox(height: 12),
//                     _buildInfoRow('Name', "M Preethi"),
//                     SizedBox(height: 8),
//                     _buildInfoRow('Email', "example@gmail.com"),
//                     SizedBox(height: 8),
//                     _buildInfoRow('Age', "25"),
//                     SizedBox(height: 8),
//                     _buildInfoRow('Phone', "+123456789"),
//                     SizedBox(height: 8),
//                     _buildInfoRow('Gender', "Female"),
//                   ],
//                 ),
//               ),
//             ),
//             // List of navigation options
//             ...List.generate(
//               customListTiles.length,
//               (index) {
//                 final tile = customListTiles[index];
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 5),
//                   child: Card(
//                     color: Colors.white60,
//                     elevation: 4,
//                     shadowColor: Colors.black12,
//                     child: ListTile(
//                       leading: Icon(tile.icon),
//                       title: Text(tile.title),
//                       trailing: IconButton(
//                         onPressed: () {
//                           // Navigate to different pages based on the tile title
//                           switch (tile.title) {
//                             case "Activity":
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => ActivityScreen()),
//                               );
//                               break;
//                             case "Progress":
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => ProgressScreen()),
//                               );
//                               break;
//                             case "Therapy Dr":
//                               // Navigator.push(
//                               //   context,
//                               //   MaterialPageRoute(
//                               //       builder: (context) => TherapyScreen()),
//                               // );
//                               break;
//                             case "Community":
//                               // Navigator.push(
//                               //   context,
//                               //   MaterialPageRoute(
//                               //       builder: (context) => CommunityScreen()),
//                               // );
//                               break;
//                             case "Notifications":
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         NotificationsScreen()),
//                               );
//                               break;
//                             case "Logout":
//                               print("Logout pressed");
//                               break;
//                           }
//                         },
//                         icon: const Icon(Icons.chevron_right),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//             // Home Button
//             ElevatedButton.icon(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color.fromARGB(255, 119, 56, 137),
//                 padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                 ),
//               ),
//               icon: Icon(Icons.arrow_back, color: Colors.white),
//               label: Text(
//                 'Home Screen',
//                 style: GoogleFonts.arima(color: Colors.white, fontSize: 18),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Widget to build individual profile information row
//   Widget _buildInfoRow(String title, String value) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           title,
//           style: GoogleFonts.arima(fontSize: 18, color: Colors.grey[700]),
//         ),
//         Text(
//           value,
//           style: GoogleFonts.arima(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF4A148C),
//           ),
//         ),
//       ],
//     );
//   }
// }

// // Your custom screens and data models (like customListTiles) should go here

