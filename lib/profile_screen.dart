import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'dart:io';


class RootApp1 extends StatelessWidget {
  const RootApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return const RootApp();
  }
}

class RootApp extends StatefulWidget {

  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  
  File? _profileImage;

  Future<void> _pickProfileImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text("PROFILE"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_rounded),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: _pickProfileImage,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: _profileImage != null
                      ? FileImage(_profileImage!) as ImageProvider
                      : AssetImage('assets/22A91A05E0.png'),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "M Preethi",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          const SizedBox(height: 35),
          ...List.generate(
            customListTiles.length,
            (index) {
              final tile = customListTiles[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Card(
                  color: Colors.white60,
                  elevation: 4,
                  shadowColor: Colors.black12,
                  child: ListTile(
                    leading: Icon(tile.icon),
                    title: Text(tile.title),
                    trailing: IconButton(
                      onPressed: () {
                        // Navigate to different pages based on the tile title
                        switch (tile.title) {
                          case "Activity":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ActivityScreen()),
                            );
                            break;
                          case "Progress":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProgressScreen()),
                            );
                            break;
                          case "Therapy Dr":
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => TherapyScreen()),
                            // );
                            break;
                          // case "Community":
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => CommunityScreen()),
                          //   );
                            break;
                          case "Notifications":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotificationsScreen()),
                            );
                            break;
                          case "Logout":
                            // Handle Logout or navigate to login page
                            print("Logout pressed");
                            break;
                        }
                      },
                      icon: const Icon(Icons.chevron_right),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class CustomListTile {
  final IconData icon;
  final String title;
  CustomListTile({
    required this.icon,
    required this.title,
  });
}

List<CustomListTile> customListTiles = [
  CustomListTile(
    icon: Icons.workspaces_sharp,
    title: "Activity",
  ),
  CustomListTile(
    icon: Icons.insights,
    title: "Progress",
  ),
  CustomListTile(
    title: "Therapy Dr",
    icon: Icons.medical_information,
  ),
  CustomListTile(
    title: "Community",
    icon: CupertinoIcons.group,
  ),
  CustomListTile(
    icon: Icons.notifications_none,
    title: "Notifications",
  ),
  CustomListTile(
    icon: Icons.logout_outlined,
    title: "Logout",
  ),
];

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
