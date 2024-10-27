import 'package:flutter/material.dart';
import 'dart:ui';

class MoodTrackPage extends StatefulWidget {
  const MoodTrackPage({super.key});

  @override
  State<MoodTrackPage> createState() => _MoodTrackPageState();
}

class _MoodTrackPageState extends State<MoodTrackPage> {
  bool showSplashImage = true; // Controls whether to show the splash image

  @override
  void initState() {
    super.initState();

    // Show the splash image for 3 seconds (3000 milliseconds)
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        showSplashImage = false; // Hide the splash image after the delay
      });
    });
  }

  // List of moods with corresponding image paths, labels, background colors, and messages
  final List<Map<String, dynamic>> moods = [
    {
      'label': 'Unhappy',
      'image': 'assets/unhappy.png',
      'color': Colors.red,
      'message':
          'It\'s okay to feel down sometimes. Stay strong, better days are coming! 💪',
    },
    {
      'label': 'Sad',
      'image': 'assets/sad.png',
      'color': Colors.blue,
      'message': 'Every storm runs out of rain. Keep your head up! 🌈',
    },
    {
      'label': 'Normal',
      'image': 'assets/neutral.png',
      'color': Color(0XFFCE93D8),
      'message': 'Embrace the calm, you are doing just fine. Keep going! 🌿',
    },
    {
      'label': 'Good',
      'image': 'assets/good.png',
      'color': Colors.green,
      'message': 'You are glowing today! Keep spreading that positivity. 🌟',
    },
    {
      'label': 'Happy',
      'image': 'assets/happy.png',
      'color': Colors.yellow,
      'message': 'Happiness looks great on you! Shine bright like the sun ☀️',
    },
  ];

  int selectedIndex = 2; // Default selected mood index (Normal)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showSplashImage
          ? _buildSplashScreen() // Display splash screen with blur effect
          : _buildMoodTracker(), // Display mood tracker after splash screen
    );
  }

  // Function to build the splash screen (full-screen image with blur transition)
  Widget _buildSplashScreen() {
    return TweenAnimationBuilder(
      tween: Tween<double>(
          begin: 0, end: 10), // Animate from 0 to 10 blur intensity
      duration: const Duration(seconds: 3), // Animation duration
      builder: (context, blurValue, child) {
        return Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/emoji.png', // Full-screen image
                fit: BoxFit.cover, // Image covers the entire screen
              ),
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: blurValue, sigmaY: blurValue),
                child: Container(
                  color: Colors.black.withOpacity(0), // Keep it transparent
                ),
              ),
            ),
          ],
        );
      },
      onEnd: () {
        setState(() {
          showSplashImage =
              false; // Transition to the main content after blur animation ends
        });
      },
    );
  }

  // Function to build the mood tracker UI
  Widget _buildMoodTracker() {
    return Container(
      // Background with linear gradient
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF1A0129),
            Color(0xFF260339),
            Color(0xFF380852),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title Text
            const Text(
              'How Do You Feel\n Today?',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),

            // Wrapping containers with opacity and light shades around the clicked image
            Stack(
              alignment: Alignment.center,
              children: [
                // Outer container with light background and opacity
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: moods[selectedIndex]['color']
                        .withOpacity(0.3), // Color with opacity
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                // Inner container with lighter background
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: moods[selectedIndex]['color']
                        .withOpacity(0.5), // More opaque inner container
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                // Display the selected image from the slider
                Image.asset(
                  moods[selectedIndex]['image'],
                  height: 100,
                  width: 100,
                ),
              ],
            ),
            const SizedBox(height: 40),

            // Slider containing emojis in circular shapes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(moods.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index; // Update selected image
                    });
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 25, // Decreased size for the slider images
                        backgroundColor: moods[index]['color'],
                        child: Image.asset(
                          moods[index]['image'],
                          height: 35, // Decreased image size
                          width: 35,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        moods[index]['label'],
                        style: const TextStyle(
                          fontSize: 14, // Decreased font size for labels
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
            const SizedBox(
                height: 30), // Space between slider and Note Mood text

            // Button at the bottom
            ElevatedButton(
              onPressed: () {
                _showMoodPopup(moods[selectedIndex]['message']);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40, vertical: 15), // Button size
                backgroundColor: const Color(0xFF1A0129), // Dark button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'This is My Mood',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to show the motivational popup based on the selected mood
  void _showMoodPopup(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor:
              const Color.fromARGB(255, 26, 1, 41), // Dialog background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Motivational Message',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                message,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text(
                'Close',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
