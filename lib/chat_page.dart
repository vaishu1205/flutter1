import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:ishipprj/formatting.dart';

class Message {
  final String text;
  final bool isUser;
  Message({required this.text, required this.isUser});
}

class ChatHome extends StatefulWidget {
  const ChatHome({super.key});

  @override
  State<ChatHome> createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  TextEditingController user_message = TextEditingController();
  String? data = null;
  final List<Message> _messages = [
    // Message(text: 'Heyy hows it going!!', isUser: true),
    // Message(text: 'This is text 22', isUser: true),
    Message(text: 'Hello! How are you doing?', isUser: false),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: Scaffold(
          backgroundColor: Color(0xFF1A0129),
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new),
              color: Colors.white,
            ),
            backgroundColor: Color(0xFF260339),
            title: Text(
              'Chat Bot',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: Colors.white.withOpacity(0.95),
                fontSize: 24,
              ),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF260339),
                    Color(0xFF380852),
                  ],
                ),
              ),
            ),
          ),
          body: Stack(
            children: [
              // Background Image
              Center(
                child: Image.asset(
                  'assets/chattbot.png',
                  width: 400,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF1A0129).withOpacity(0.6),
                      Color(0xFF260339).withOpacity(0.6),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: _messages.length,
                          itemBuilder: (context, index) {
                            final message = _messages[index];
                            final text = message.text;
                            final user = message.isUser;
                            return ListTile(
                              title: Align(
                                alignment: user
                                    ? Alignment.centerRight
                                    : Alignment.centerLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: user
                                        ? Color(0xFF2E7D32)
                                        : Color(0xFF4A0961),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    child: FormatBuilder(text: text),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              onSubmitted: (value) {
                                if (value.trim().isNotEmpty) {
                                  setState(() {
                                    _messages.add(Message(
                                        text: user_message.text.trim(),
                                        isUser: true));
                                    getResponse(user_message.text.trim());
                                  });
                                  user_message.clear();
                                }
                              },
                              controller: user_message,
                              decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(8),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25))),
                            ),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xFF260339),
                              ),
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _messages.add(Message(
                                          text: user_message.text.trim(),
                                          isUser: true));
                                      getResponse(user_message.text.trim());
                                    });
                                    user_message.clear();
                                  },
                                  icon: Icon(
                                    Icons.send_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  )))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getResponse(String query) async {
    setState(() {
      data = null;
    });
    try {
      final url =
          "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=AIzaSyBjZyw4dey_hgFfRPMfG8WnI_c3Sf1e5Oc";

      final body = {
        "contents": [
          {
            "parts": [
              {"text": query}
            ]
          }
        ]
      };

      final res = await http.post(
        Uri.parse(url),
        body: jsonEncode(body),
        headers: {'Content-Type': 'application/json'},
      );

      if (res.statusCode == 200) {
        final responseData = jsonDecode(res.body);
        setState(() {
          data = responseData['candidates'][0]['content']['parts'][0]['text'];
        });

        print(data);
        setState(() {
          if (data != null) {
            _messages.add(Message(text: data!, isUser: false));
          }
        });
      } else {
        print('Failed to get response. Status code: ${res.statusCode}');
        print('Error Response: ${res.body}');
      }
    } catch (err) {
      print('Error: $err');
    }
  }
}
