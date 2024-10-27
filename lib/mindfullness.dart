// // import 'package:flutter/material.dart';
// // import 'dart:async';

// // class MeditationApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MeditationFocusScreen();
// //   }
// // }

// // class MeditationFocusScreen extends StatefulWidget {
// //   @override
// //   _MeditationFocusScreenState createState() => _MeditationFocusScreenState();
// // }

// // class _MeditationFocusScreenState extends State<MeditationFocusScreen> {
// //   bool _isTimerStarted = false;
// //   Timer? _timer;
// //   int _remainingSeconds = 1200; // 20 minutes in seconds

// //   void _startTimer() {
// //     setState(() {
// //       _isTimerStarted = true;
// //     });

// //     _timer = Timer.periodic(Duration(seconds: 1), (timer) {
// //       if (_remainingSeconds > 0) {
// //         setState(() {
// //           _remainingSeconds--;
// //         });
// //       } else {
// //         _timer?.cancel();
// //       }
// //     });
// //   }

// //   String _formatTime(int totalSeconds) {
// //     int minutes = totalSeconds ~/ 60;
// //     int seconds = totalSeconds % 60;
// //     return '$minutes:${seconds.toString().padLeft(2, '0')}';
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Meditation Focus'),
// //       ),
// //       body: Center(
// //         child: Padding(
// //           padding: const EdgeInsets.all(20.0),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               Text(
// //                 'Meditation Focus',
// //                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //               ),
// //               SizedBox(height: 20),
// //               Text(
// //                 '20 Mins',
// //                 style: TextStyle(fontSize: 18),
// //               ),
// //               SizedBox(height: 5),
// //               Text(
// //                 '100 XP',
// //                 style: TextStyle(fontSize: 18),
// //               ),
// //               SizedBox(height: 20),
// //               if (_isTimerStarted)
// //                 Text(
// //                   _formatTime(_remainingSeconds),
// //                   style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
// //                 )
// //               else
// //                 Image.network(
// //                   'https://example.com/meditation_image.png',
// //                   height: 150,
// //                 ),
// //               SizedBox(height: 20),
// //               ElevatedButton(
// //                 onPressed: _isTimerStarted ? null : _startTimer,
// //                 child: Text('Start'),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   @override
// //   void dispose() {
// //     _timer?.cancel();
// //     super.dispose();
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:google_fonts/google_fonts.dart';

// class MeditationApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MeditationFocusScreen();
//   }
// }

// class MeditationFocusScreen extends StatefulWidget {
//   @override
//   _MeditationFocusScreenState createState() => _MeditationFocusScreenState();
// }

// class _MeditationFocusScreenState extends State<MeditationFocusScreen> {
//   bool _isTimerStarted = false;
//   Timer? _timer;
//   int _remainingSeconds = 1200; // 20 minutes in seconds

//   void _startTimer() {
//     setState(() {
//       _isTimerStarted = true;
//     });

//     _timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       if (_remainingSeconds > 0) {
//         setState(() {
//           _remainingSeconds--;
//         });
//       } else {
//         _timer?.cancel();
//       }
//     });
//   }

//   void _stopTimer() {
//     _timer?.cancel();
//     setState(() {
//       _isTimerStarted = false;
//       _remainingSeconds = 1200; // Reset back to 20 minutes
//     });
//   }

//   String _formatTime(int totalSeconds) {
//     int minutes = totalSeconds ~/ 60;
//     int seconds = totalSeconds % 60;
//     return '$minutes:${seconds.toString().padLeft(2, '0')}';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF1A0129),
//       appBar: AppBar(
//         backgroundColor: Color(0xFF1A0129),
//         title: Text(
//           'Mindfulness Meditation',
//           style: GoogleFonts.arima(
//               color: Colors.yellow, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Row(
//         children: [
//           Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 20, left: 20),
//                 child: Container(
//                   height: 250,
//                   width: 320,
//                   padding: const EdgeInsets.all(20.0),
//                   decoration: BoxDecoration(
//                     color: const Color.fromARGB(255, 62, 249, 205)
//                         .withOpacity(0.2),
//                     borderRadius: BorderRadius.circular(20),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         spreadRadius: 5,
//                         blurRadius: 10,
//                         offset: Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Meditation Focus',
//                         style: GoogleFonts.arima(
//                             fontSize: 24, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 10),
//                       Text(
//                         '20 Mins',
//                         style: GoogleFonts.arima(
//                             fontSize: 20, fontWeight: FontWeight.w700),
//                       ),
//                       SizedBox(height: 5),
//                       Text(
//                         '100 XP',
//                         style: GoogleFonts.arima(
//                             fontSize: 20, fontWeight: FontWeight.w700),
//                       ),
//                       SizedBox(height: 10),
//                       if (_isTimerStarted)
//                         Text(
//                           _formatTime(_remainingSeconds),
//                           style: GoogleFonts.arima(
//                               fontSize: 28, fontWeight: FontWeight.bold),
//                         ),
//                       SizedBox(height: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           ElevatedButton(
//                             onPressed: _isTimerStarted ? null : _startTimer,
//                             child: Text(
//                               'Start',
//                               style: GoogleFonts.arima(
//                                   fontWeight: FontWeight.w600, fontSize: 16),
//                             ),
//                           ),
//                           SizedBox(width: 20),
//                           ElevatedButton(
//                             onPressed: _isTimerStarted ? _stopTimer : null,
//                             child: Text(
//                               'Stop',
//                               style: GoogleFonts.arima(
//                                   fontWeight: FontWeight.w600, fontSize: 16),
//                             ),
//                             style: ElevatedButton.styleFrom(
//                                 backgroundColor:
//                                     const Color.fromARGB(255, 253, 113, 103)),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Image.network(
//               "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729795026/7667bd684273325bb6a12bd707f34582-removebg-preview_ztrgzr.png"),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }
// }

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

class MeditationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MeditationFocusScreen();
  }
}

class MeditationFocusScreen extends StatefulWidget {
  @override
  _MeditationFocusScreenState createState() => _MeditationFocusScreenState();
}

class _MeditationFocusScreenState extends State<MeditationFocusScreen> {
  bool _isTimerStarted = false;
  Timer? _timer;
  int _remainingSeconds = 1200; // 20 minutes in seconds

  void _startTimer() {
    setState(() {
      _isTimerStarted = true;
    });

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    setState(() {
      _isTimerStarted = false;
      _remainingSeconds = 1200; // Reset back to 20 minutes
    });
  }

  String _formatTime(int totalSeconds) {
    int minutes = totalSeconds ~/ 60;
    int seconds = totalSeconds % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A0129),
        title: Text(
          'Mindfulness Meditation',
          style: GoogleFonts.arima(
              color: Colors.yellow, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left side content
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Container(
                            height: 300,
                            width: 250,
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 62, 249, 205)
                                  .withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Meditation \n     Focus',
                                  style: GoogleFonts.arima(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '20 Mins',
                                  style: GoogleFonts.arima(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '100 XP',
                                  style: GoogleFonts.arima(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 5),
                                if (_isTimerStarted)
                                  Text(
                                    _formatTime(_remainingSeconds),
                                    style: GoogleFonts.arima(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                SizedBox(height: 5),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed:
                                          _isTimerStarted ? null : _startTimer,
                                      child: Text(
                                        'Start',
                                        style: GoogleFonts.arima(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed:
                                          _isTimerStarted ? _stopTimer : null,
                                      child: Text(
                                        'Stop',
                                        style: GoogleFonts.arima(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 253, 113, 103)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  // Right side content with the image
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 300,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729795026/7667bd684273325bb6a12bd707f34582-removebg-preview_ztrgzr.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Mindfulness Meditation",
                style: GoogleFonts.arima(color: Colors.yellow, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  " Mindfulness meditation is a practice that involves focusing on the present moment in a non-judgmental way. The goal is to increase awareness of your thoughts, feelings, and sensations, allowing you to calmly acknowledge and accept them. It is often used to reduce stress, improve concentration, and enhance emotional regulation.",
                  style: GoogleFonts.arima(
                      fontSize: 18,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "How to Practice:",
                style: GoogleFonts.arima(color: Colors.yellow, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "1. Find a quiet place: Sit or lie down comfortably in a quiet spot.",
                  style: GoogleFonts.arima(
                      fontSize: 18,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "2. Focus on your breath: Pay attention to the sensation of breathing in and out. Feel the rise and fall of your chest or the sensation at your nostrils.",
                  style: GoogleFonts.arima(
                      fontSize: 18,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "3. Observe your thoughts: When thoughts or distractions arise, simply acknowledge them and gently return your focus to your breath.",
                  style: GoogleFonts.arima(
                      fontSize: 18,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "4. Stay in the moment: Continue to be present, focusing on your breathing or body sensations.",
                  style: GoogleFonts.arima(
                      fontSize: 18,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Benifits:",
                style: GoogleFonts.arima(color: Colors.yellow, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  ">  Reduces stress and anxiety",
                  style: GoogleFonts.arima(
                      fontSize: 18,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  "   >  Improves focus and attention",
                  style: GoogleFonts.arima(
                      fontSize: 18,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  "       >  Enhances emotional well-being",
                  style: GoogleFonts.arima(
                      fontSize: 18,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 65),
                child: Text(
                  ">  Promotes better sleep",
                  style: GoogleFonts.arima(
                      fontSize: 18,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
