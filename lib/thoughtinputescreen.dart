import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

// Updated ThoughtInputScreen to accept initial title, date, content, and image for editing
class ThoughtInputScreen extends StatefulWidget {
  final Function(String title, String date, String content, File? image)
      onSave; // Accept title, date, content, and image
  final String? initialTitle; // Initial title for editing
  final String? initialDate; // Initial date for editing
  final String? initialContent; // Optional: Initial content for editing
  final File? initialImage; // Optional: Initial image for editing

  const ThoughtInputScreen({
    super.key,
    required this.onSave,
    this.initialTitle,
    this.initialDate,
    this.initialContent,
    this.initialImage,
  });

  @override
  _ThoughtInputScreenState createState() => _ThoughtInputScreenState();
}

class _ThoughtInputScreenState extends State<ThoughtInputScreen> {
  late TextEditingController _titleController;
  late TextEditingController _contentController;
  File? _selectedImage; // Store the selected image

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.initialTitle);
    _contentController = TextEditingController(text: widget.initialContent);
    _selectedImage = widget.initialImage; // Pre-fill the selected image
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final pickedFile = await picker.pickImage(
        source: ImageSource.gallery); // Choose from gallery

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path); // Update the selected image
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF260339),
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
          'Your Thoughts',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            color: Colors.white.withOpacity(0.95),
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset:
          true, // Ensure the body resizes when the keyboard appears
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Color(0xFF3D156E).withOpacity(0.95),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Share Your Thoughts',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          color: Colors.yellow[600],
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        controller: _titleController, // Controller for title
                        decoration: InputDecoration(
                          hintText: 'Enter Title..',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.blueAccent),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.all(16),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller:
                            _contentController, // Controller for content
                        decoration: InputDecoration(
                          hintText: 'Enter Content....',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.blueAccent),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.all(16),
                        ),
                        maxLines: 5, // Allow multiple lines for content
                      ),
                      SizedBox(height: 20),
                      // Display the selected image
                      if (_selectedImage != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Image.file(
                            _selectedImage!,
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      // Button to pick an image
                      Row(
                        children: [
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF9C27B0),
                                    Color(0xFF673AB7)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: ElevatedButton(
                                onPressed: _pickImage,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                child: Text(
                                  ' Add Image +',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Arima',
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF9C27B0), Color(0xFF673AB7)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_titleController.text.isNotEmpty) {
                              String date = DateTime.now()
                                  .toLocal()
                                  .toString()
                                  .split(' ')[0];
                              widget.onSave(
                                  _titleController.text,
                                  date,
                                  _contentController.text,
                                  _selectedImage); // Pass image to onSave
                              Navigator.pop(
                                  context); // Go back to the previous screen
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            'Save',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Arima',
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
