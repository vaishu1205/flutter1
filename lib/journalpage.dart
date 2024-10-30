import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ishipprj/thoughtinputescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class JournalPage extends StatefulWidget {
  const JournalPage({super.key});

  @override
  _JournalPageState createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  List<Map<String, String>> _thoughts = [];

  @override
  void initState() {
    super.initState();
    _loadThoughts(); // Load thoughts when the app starts
  }

  Future<void> _loadThoughts() async {
    final prefs = await SharedPreferences.getInstance();
    final String? thoughtsString = prefs.getString('thoughts');
    if (thoughtsString != null) {
      List<dynamic> jsonList = jsonDecode(thoughtsString);
      _thoughts =
          jsonList.map((item) => Map<String, String>.from(item)).toList();
    }
    setState(() {});
  }

  void _editThought(
      int index, String title, String date, String content, File? imagePath) {
    setState(() {
      _thoughts[index]['title'] = title;
      _thoughts[index]['date'] = date;
      _thoughts[index]['content'] = content;
      _thoughts[index]['imagePath'] = imagePath?.path ?? '';
      _saveThoughts();
    });
  }

  Future<void> _saveThoughts() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('thoughts', jsonEncode(_thoughts));
  }

  void _addThought(String title, String date, String content, File? imagePath) {
    setState(() {
      _thoughts.add({
        'title': title,
        'date': date,
        'content': content,
        'imagePath': imagePath?.path ?? '',
      });
      _saveThoughts();
    });
  }

  void _deleteThought(int index) {
    setState(() {
      _thoughts.removeAt(index);
      _saveThoughts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
        ),
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //       colors: [
        //         Color(0xFF260339),
        //         Color(0xFF380852),
        //       ],
        //     ),
        //   ),
        // ),
        // backgroundColor: Color(0xFF260339),
        backgroundColor: Color(0xFF1A0129),
        title: Text(
          'Journal',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            color: Colors.white.withOpacity(0.95),
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThoughtInputScreen(
                    onSave: _addThought,
                  ),
                ),
              );
            },
            icon: Icon(
              CupertinoIcons.pen,
              color: Colors.white.withOpacity(0.95),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
        child: ListView.builder(
          itemCount: _thoughts.length,
          itemBuilder: (context, index) {
            final thought = _thoughts[index];
            if (thought['title'] == null || thought['date'] == null) {
              return SizedBox.shrink();
            }

            return Card(
              margin: EdgeInsets.symmetric(vertical: 1),
              elevation: 4,
              child: ListTile(
                title: Text(thought['title']!),
                subtitle: Text('Date: ${thought['date']}'),
                onTap: () => showThoughtDetails(
                  context,
                  thought['title']!,
                  thought['date']!,
                  thought['content'] ?? "No content",
                  thought['imagePath'],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit, color: Colors.black),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ThoughtInputScreen(
                              initialTitle: thought['title'],
                              initialDate: thought['date'],
                              initialContent: thought['content'],
                              onSave: (title, date, content, imageFile) =>
                                  _editThought(index, title, date, content,
                                      imageFile as File?),
                            ),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete, color: Colors.black),
                      onPressed: () => _deleteThought(index),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void showThoughtDetails(BuildContext context, String title, String date,
    String content, String? imagePath) {
  showDialog(
    context: context,
    barrierColor: Colors.black87, // Darker, more dramatic background
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.symmetric(horizontal: 20),
        child: TweenAnimationBuilder(
          duration: Duration(milliseconds: 300),
          tween: Tween<double>(begin: 0, end: 1),
          builder: (context, double value, child) {
            return Transform.scale(
              scale: 0.95 + (0.05 * value),
              child: Opacity(opacity: value, child: child!),
            );
          },
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.85,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.deepPurple.shade50,
                  Colors.white,
                  Colors.purple.shade50,
                ],
                stops: [0.0, 0.5, 1.0],
              ),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.2),
                  blurRadius: 20,
                  spreadRadius: 5,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Close button with container
                  Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.topRight,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.purple.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.close_rounded,
                            color: Color(0xFF9C27B0),
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(28, 0, 28, 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title with enhanced gradient
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return LinearGradient(
                              colors: [
                                Color(0xFF9C27B0),
                                Color(0xFF673AB7),
                                Color(0xFF9C27B0),
                              ],
                              stops: [0.0, 0.5, 1.0],
                            ).createShader(bounds);
                          },
                          child: Text(
                            title,
                            style: GoogleFonts.arima(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              height: 1.3,
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        // Date with icon
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today_rounded,
                              size: 16,
                              color: Colors.purple.withOpacity(0.6),
                            ),
                            SizedBox(width: 8),
                            Text(
                              date,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 32,
                          thickness: 1,
                          color: Colors.purple.withOpacity(0.1),
                        ),
                        // Content with enhanced typography
                        Text(
                          content,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.grey[800],
                            height: 1.8,
                            letterSpacing: 0.3,
                            wordSpacing: 1.2,
                          ),
                        ),
                        SizedBox(height: 24),
                        // Image with enhanced presentation
                        if (imagePath != null && imagePath.isNotEmpty)
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 15,
                                  spreadRadius: 2,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.file(
                                File(imagePath),
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
