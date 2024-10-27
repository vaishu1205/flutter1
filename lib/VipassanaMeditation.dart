import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

class VipassanaMeditation extends StatelessWidget {
  const VipassanaMeditation({super.key});

  @override
  Widget build(BuildContext context) {
    return VipassanaMeditationScreen();
  }
}

class VipassanaMeditationScreen extends StatefulWidget {
  @override
  _MeditationFocusScreenState createState() => _MeditationFocusScreenState();
}

class _MeditationFocusScreenState extends State<VipassanaMeditationScreen> {
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
          'Vipassana Meditation',
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
                          "https://res.cloudinary.com/dsgjptfqj/image/upload/v1729799034/cc5f8d2469cce7e310def52c450a01ad-removebg-preview_ohzspv.png",
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
                "Vipassana Meditation",
                style: GoogleFonts.arima(color: Colors.yellow, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Vipassana Meditation is a traditional Buddhist practice focused on gaining insight into the true nature of reality through mindful observation of thoughts, emotions, and bodily sensations. The goal is to cultivate self-awareness and achieve inner peace by seeing things as they really are.",
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
                  "1. Sit comfortably: Find a quiet place to sit in a comfortable, stable position with your back straight.",
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
                  "2. Focus on your breath: Observe the natural rhythm of your breath, noticing each inhale and exhale.",
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
                  "3. Observe sensations: Gradually move your attention through your body, observing any physical sensations without reacting to them.",
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
                  "4. Witness thoughts without judgment: Allow thoughts and feelings to arise without attachment or aversion; simply observe them, then let them pass.",
                  style: GoogleFonts.arima(
                      fontSize: 18,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "5. Stay present: Continue observing with a calm, open awareness, aiming to remain fully present in each moment.",
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
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  ">  Improves emotional resilience and \n    self-awareness",
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
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "> Reduces stress and promotes mental\n   clarity",
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
                padding: const EdgeInsets.only(right: 20, left: 10),
                child: Text(
                  "   >  Enhances mindfulness and concentration",
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
                  ">  Helps develop a deeper \n    understanding of oneself",
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
