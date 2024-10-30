import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> exercise_names = [
  "Walking",
  "Running",
  "Cycling",
  "Cricket",
  "Basketball",
  "Football"
];
List<String> imagess = [
  "assets/walking.jpeg",
  "assets/running.jpeg",
  "assets/cycling.jpeg",
  "assets/cricket.jpeg",
  "assets/basketball.jpeg",
  "assets/football.jpeg",
];

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A0129),
        centerTitle: true,
        title: Text(
          "Exercise",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            color: Colors.white.withOpacity(0.95),
            fontSize: 24,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: exercise_names.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      height: 150,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.darken,
                              ),
                              child: Image.asset(
                                imagess[index],
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                alignment: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                          // Text positioned correctly within the container
                          Positioned(
                            left: 10,
                            top: 10,
                            child: Row(
                              children: [
                                Text(
                                  exercise_names[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                // Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios_sharp,
                                      color: Colors.white,
                                      size: 20,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
