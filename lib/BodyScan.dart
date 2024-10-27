import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

class Bodyscan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BodyScanScreen();
  }
}

class BodyScanScreen extends StatefulWidget {
  @override
  _MeditationFocusScreenState createState() => _MeditationFocusScreenState();
}

class _MeditationFocusScreenState extends State<BodyScanScreen> {
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
          'Body Scan Meditation',
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
                "Body Scan Meditation",
                style: GoogleFonts.arima(color: Colors.yellow, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  " Body Scan Meditation is a mindfulness practice that involves paying close attention to different parts of your body, usually starting from the feet and moving up to the head. This technique helps to release tension, enhance body awareness, and promote relaxation.",
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
                  "1. Get comfortable: Lie down or sit in a comfortable position in a quiet place.",
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
                  "2. Start at your feet: Bring attention to your feet, noticing any sensations, tension, or relaxation.",
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
                  "3. Move up gradually: Slowly move your focus up through your legs, abdomen, chest, arms, and head, observing any sensations in each area.",
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
                  "4. Breathe and release: As you focus on each body part, take a deep breath and consciously release any tension.",
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
                  "5. Finish mindfully: After scanning your whole body, take a few deep breaths, appreciating the relaxation.",
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
                  ">  Reduces muscle tension and stress",
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
                padding: const EdgeInsets.only(
                  right: 45,
                ),
                child: Text(
                  ">  Increases awareness of physic \n    sensations",
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
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  ">  Improves relaxation and sleep \n    quality",
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
                padding: const EdgeInsets.only(right: 5),
                child: Text(
                  "> Enhances mindfulness and emotional\n   balance",
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
