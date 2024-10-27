import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishipprj/chat_page.dart';
import 'package:lottie/lottie.dart';

class ChatIntroScreen extends StatelessWidget {
  const ChatIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/Animation - 1729919601800.json',
                height: 300, width: 300),
            Text(
              "       Welcome ,\n I am your healer",
              style: GoogleFonts.arima(color: Colors.yellow, fontSize: 40),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatHome()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 247, 93, 55),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Chat',
                  style: GoogleFonts.arima(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
