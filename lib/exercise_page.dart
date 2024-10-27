import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

List<String> exercise_names = [
  "Walking",
  "Running",
  "Cycling",
  "Skipping",
  "Cricket",
  "Basketball",
  "Football"
];
List<String> imagess = [
  "assets/undraw_Passing_by_0un9.png",
  "assets/undraw_fitness_stats_sht6.png",
  "assets/undraw_indoor_bike_pwa4.png",
  "assets/undraw_Children_re_c37f.png",
  "assets/undraw_Home_run_acyh.png",
  "assets/Basketball_illustration.png",
  "assets/undraw_goal_0v5v.png"
];

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 129, 47, 143),
      appBar: AppBar(
        backgroundColor: Color(0XFFCE93D8),
        centerTitle: true,
        title: Text(
          "Exercise",
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
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
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 10,
                              child: Text(
                                exercise_names[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              child: Image.asset(
                                imagess[index],
                                height: 100,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
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
