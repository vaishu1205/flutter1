import 'package:flutter/material.dart';

class MoodTrackerPage extends StatefulWidget {
  const MoodTrackerPage({Key? key}) : super(key: key);

  @override
  _MoodTrackerPageState createState() => _MoodTrackerPageState();
}

class _MoodTrackerPageState extends State<MoodTrackerPage> {
  String selectedMood = '';

  // Define mood data with associated image paths
  final List<Map<String, dynamic>> moods = [
    {
      'name': 'Happy',
      'color': const Color(0xFF7BC043),
      'imagePath': 'assets/happy.png',
    },
    {
      'name': 'Excited',
      'color': const Color(0xFFFFBE0B),
      'imagePath': 'assets/yellow_happy.png',
    },
    {
      'name': 'Calm',
      'color': const Color(0xFF3A86FF),
      'imagePath': 'assets/neutral.png',
    },
    {
      'name': 'Tired',
      'color': const Color(0xFFFF9F1C),
      'imagePath': 'assets/sad.png',
    },
    {
      'name': 'Depressed',
      'color': const Color(0xFF9381FF),
      'imagePath': 'assets/very_sad.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF1A0129),
      ),
      body: Container(
        color: const Color(0xFF1A0129), // Set background color
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text(
                'How are you feeling\nthis day?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              // Display selected image in the center
              if (selectedMood.isNotEmpty)
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: moods
                            .firstWhere(
                                (m) => m['name'] == selectedMood)['color']
                            .withOpacity(0.2),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: moods
                            .firstWhere(
                                (m) => m['name'] == selectedMood)['color']
                            .withOpacity(0.4),
                      ),
                    ),
                    Image.asset(
                      moods.firstWhere(
                          (m) => m['name'] == selectedMood)['imagePath'],
                      width: 80,
                      height: 80,
                    ),
                  ],
                )
              else
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.3),
                  ),
                  child: const Center(
                    child: SizedBox(
                      child: Text(
                        '?',
                        style: TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 20),
              Text(
                selectedMood.isNotEmpty
                    ? "I'm Feeling $selectedMood"
                    : "Select your mood",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                height: 80, // Adjusted for dual circular containers
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: moods.length,
                  itemBuilder: (context, index) {
                    final mood = moods[index];
                    final isSelected = selectedMood == mood['name'];

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedMood = mood['name'];
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            if (isSelected)
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: mood['color'].withOpacity(0.4),
                                ),
                              ),
                            Container(
                              width: 60,
                              height: 60,
                              alignment: Alignment.center,
                              child: Image.asset(
                                mood['imagePath'],
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF9C27B0), Color(0xFF673AB7)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle mood setting logic here
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Mood set to: $selectedMood')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    minimumSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    'Set Mood',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
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
