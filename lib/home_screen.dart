import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:ishipprj/YogaMain.dart';
import 'package:ishipprj/exercise_page.dart';
import 'package:ishipprj/home_calender.dart';
import 'package:ishipprj/home_cards.dart';
import 'package:ishipprj/journalpage.dart';
import 'package:ishipprj/mood_track_page.dart';
import 'package:ishipprj/music.dart';
import 'package:ishipprj/quotes.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color bgColor = const Color(0xFF1A0129);
  String greetingMessage = '';
  String userName = 'Rabiya';
  DateTime today = DateTime.now();
  List<DateTime> weekDates = [];

  @override
  void initState() {
    super.initState();
    _setGreetingMessage();
    _generateWeekDates();
  }

  void _setGreetingMessage() {
    final hour = DateTime.now().hour;
    setState(() {
      if (hour < 12) {
        greetingMessage = 'Good Morning';
      } else if (hour < 17) {
        greetingMessage = 'Good Afternoon';
      } else {
        greetingMessage = 'Good Evening';
      }
    });
  }

  void _generateWeekDates() {
    DateTime startOfWeek = today.subtract(Duration(days: today.weekday - 1));
    weekDates =
        List.generate(7, (index) => startOfWeek.add(Duration(days: index)));
  }

  @override
  Widget build(BuildContext context) {
    // In your parent widget
    final completedDays = {
      DateTime(2024, 4, 10): true,
      DateTime(2024, 4, 12): true,
      DateTime(2024, 4, 14): false,
    };
    //DATA OF PAGEVIEW
    final List<ActivityCardData> cardGroups = [
      ActivityCardData(
          title: 'Journalling',
          imagePath: 'assets/journal.jpeg',
          duration: '2 min',
          placement_top: 0,
          placement_bottom: 0,
          placement_left: 0,
          placement_right: 0,
          onTapFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => JournalPage(), // Your existing widget
              ),
            );
          }),
      ActivityCardData(
          title: 'Yoga Classes',
          imagePath: 'assets/yoga.jpg',
          duration: '15 min',
          placement_top: 0,
          placement_bottom: 0,
          placement_left: 0,
          placement_right: 0,
          onTapFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => YogaMain(), // Your existing widget
              ),
            );
          }),
      ActivityCardData(
          title: 'Exercises',
          imagePath: 'assets/exercise.jpg',
          duration: '10 min',
          placement_top: 0,
          placement_bottom: 0,
          placement_left: 0,
          placement_right: 0,
          onTapFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExercisePage(), // Your existing widget
              ),
            );
          }),
      ActivityCardData(
          title: 'Calming Music',
          imagePath: 'assets/music.jpeg',
          duration: '2 min',
          placement_top: 0,
          placement_bottom: 0,
          placement_left: 0,
          placement_right: 0,
          onTapFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MusicScreen(), // Your existing widget
              ),
            );
          }),
      ActivityCardData(
          title: 'Quotes',
          imagePath: 'assets/quotes.jpeg',
          duration: '15 min',
          placement_top: 0,
          placement_bottom: 0,
          placement_left: 0,
          placement_right: 0,
          onTapFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuoteScreen(),
              ),
            );
          }),
    ];

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF1A0129),
                    Color(0xFF260339),
                    Color(0xFF380852),
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15, left: 8, right: 15, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                greetingMessage,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.9),
                                  letterSpacing: 0.5,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Hello, ',
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                  Text(
                                    userName,
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.purple[100],
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MoodTrackerPage()),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Icon(
                                  Icons.favorite_rounded,
                                  color: Colors.pink[100],
                                  size: 28,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.event,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(width: 8),
                          Text(
                            '${_getMonthName(DateTime.now().month)} ${DateTime.now().year}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 1),
                    WeeklyCalendarView(
                      selectedDate: DateTime.now(),
                      completedDays: completedDays,
                    ),
                    SizedBox(height: 10),
                    // Column(
                    //   children: [
                    //     Row(
                    //       children: [
                    //         Padding(
                    //           padding:
                    //               const EdgeInsets.only(left: 15.0, bottom: 10),
                    //           child: Text(
                    //             'Categories',
                    //             style: TextStyle(
                    //                 color: Colors.purple[100],
                    //                 fontSize: 28,
                    //                 fontWeight: FontWeight.bold),
                    //           ),
                    //         ),
                    //         // GestureDetector(
                    //         //   onTap: () {
                    //         //     Navigator.push(
                    //         //       context,
                    //         //       MaterialPageRoute(
                    //         //           builder: (context) => YogaMain()),
                    //         //     );
                    //         //   },
                    //         //   child: Text(
                    //         //     'number 1',
                    //         //     style: TextStyle(color: Colors.white),
                    //         //   ),
                    //         // )
                    //       ],
                    //     ),
                    //     // Other UI Elements
                    //     Padding(
                    //       padding: const EdgeInsets.only(
                    //           left: 15, right: 15, bottom: 15),
                    //       child: Stack(
                    //         children: [
                    //           GestureDetector(
                    //             onTap: () {
                    //               Navigator.push(
                    //                 context,
                    //                 MaterialPageRoute(
                    //                     builder: (context) => JournalPage()),
                    //               );
                    //             },
                    //             child: Container(
                    //               height: 180,
                    //               width: double.infinity,
                    //               decoration: BoxDecoration(
                    //                 color: Colors.white,
                    //                 borderRadius: BorderRadius.circular(16),
                    //               ),
                    //             ),
                    //           ),
                    //           Padding(
                    //             padding: EdgeInsets.all(16.0),
                    //             child: Text(
                    //               'Journal',
                    //               style: TextStyle(
                    //                 fontSize: 24,
                    //                 fontWeight: FontWeight.bold,
                    //                 color: Colors.black,
                    //               ),
                    //             ),
                    //           ),
                    //           Positioned(
                    //             bottom: -90,
                    //             right: 15,
                    //             child: ClipRRect(
                    //               borderRadius: BorderRadius.circular(16),
                    //               child: Image.asset(
                    //                 "assets/journals.png",
                    //                 height: 250,
                    //                 width: 220,
                    //                 fit: BoxFit.cover,
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //     Row(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Expanded(
                    //           child: Padding(
                    //             padding: const EdgeInsets.only(
                    //                 left: 15, right: 7.5, bottom: 15),
                    //             child: GestureDetector(
                    //               onTap: () {
                    //                 Navigator.push(
                    //                   context,
                    //                   MaterialPageRoute(
                    //                       builder: (context) => YogaMain()),
                    //                 );
                    //               },
                    //               child: Container(
                    //                 height: 375,
                    //                 decoration: BoxDecoration(
                    //                   color: Colors.white,
                    //                   borderRadius: BorderRadius.circular(16),
                    //                   boxShadow: [
                    //                     BoxShadow(
                    //                       color: Colors.black12,
                    //                       spreadRadius: 2,
                    //                       blurRadius: 6,
                    //                       offset: Offset(0, 4),
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 child: Stack(
                    //                   children: [
                    //                     const Padding(
                    //                       padding: EdgeInsets.all(16.0),
                    //                       child: Text(
                    //                         'Yoga',
                    //                         style: TextStyle(
                    //                           fontSize: 24,
                    //                           fontWeight: FontWeight.bold,
                    //                           color: Colors.black,
                    //                         ),
                    //                       ),
                    //                     ),
                    //                     Positioned(
                    //                       bottom: 0,
                    //                       left: 15,
                    //                       right: 15,
                    //                       child: Image.asset(
                    //                         "assets/yooga.png",
                    //                         height: 250,
                    //                         fit: BoxFit.cover,
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         Column(
                    //           children: [
                    //             Padding(
                    //               padding: const EdgeInsets.only(
                    //                   right: 15, bottom: 15),
                    //               child: Container(
                    //                 height: 180,
                    //                 width: 150,
                    //                 decoration: BoxDecoration(
                    //                   color: Colors.white,
                    //                   borderRadius: BorderRadius.circular(16),
                    //                   boxShadow: [
                    //                     BoxShadow(
                    //                       color: Colors.black12,
                    //                       spreadRadius: 2,
                    //                       blurRadius: 6,
                    //                       offset: Offset(0, 4),
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 child: Column(
                    //                   children: [
                    //                     const Padding(
                    //                       padding: EdgeInsets.only(
                    //                           right: 20, top: 20),
                    //                       child: Text(
                    //                         'Music',
                    //                         style: TextStyle(
                    //                           fontSize: 24,
                    //                           fontWeight: FontWeight.bold,
                    //                           color: Colors.black,
                    //                         ),
                    //                       ),
                    //                     ),
                    //                     const SizedBox(height: 15),
                    //                     ClipRRect(
                    //                       borderRadius:
                    //                           BorderRadius.circular(16),
                    //                       child: Image.asset(
                    //                         "assets/music.png",
                    //                         height: 110,
                    //                         fit: BoxFit.cover,
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ),
                    //             GestureDetector(
                    //               onTap: () {
                    //                 Navigator.push(
                    //                   context,
                    //                   MaterialPageRoute(
                    //                       builder: (context) => ExercisePage()),
                    //                 );
                    //               },
                    //               child: Padding(
                    //                 padding: const EdgeInsets.only(right: 15),
                    //                 child: Container(
                    //                   height: 180,
                    //                   width: 150,
                    //                   decoration: BoxDecoration(
                    //                     color: Colors.white,
                    //                     borderRadius: BorderRadius.circular(16),
                    //                     boxShadow: [
                    //                       BoxShadow(
                    //                         color: Colors.black12,
                    //                         spreadRadius: 2,
                    //                         blurRadius: 6,
                    //                         offset: Offset(0, 4),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                   child: Column(
                    //                     children: [
                    //                       const Padding(
                    //                         padding: EdgeInsets.only(
                    //                             right: 20, top: 20),
                    //                         child: Text(
                    //                           'Exercises',
                    //                           style: TextStyle(
                    //                             fontSize: 24,
                    //                             fontWeight: FontWeight.bold,
                    //                             color: Colors.black,
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       const SizedBox(height: 15),
                    //                       ClipRRect(
                    //                         borderRadius:
                    //                             BorderRadius.circular(16),
                    //                         child: Image.asset(
                    //                           "assets/exercise.png",
                    //                           height: 110,
                    //                           fit: BoxFit.cover,
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //     // Quotes & Affirmations Container
                    //     Padding(
                    //       padding: const EdgeInsets.only(
                    //           bottom: 15.0, left: 15, right: 15),
                    //       child: GestureDetector(
                    //         onTap: () {
                    //           Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => QuoteScreen()),
                    //           );
                    //         },
                    //         child: Container(
                    //           height: 180,
                    //           width: double.infinity,
                    //           decoration: BoxDecoration(
                    //             color: Colors.white,
                    //             borderRadius: BorderRadius.circular(16),
                    //             boxShadow: [
                    //               BoxShadow(
                    //                 color: Colors.black12,
                    //                 spreadRadius: 2,
                    //                 blurRadius: 6,
                    //                 offset: Offset(0, 4),
                    //               ),
                    //             ],
                    //           ),
                    //           child: Stack(
                    //             children: [
                    //               const Padding(
                    //                 padding: EdgeInsets.all(16.0),
                    //                 child: Text(
                    //                   'Quote &\nAffirmations',
                    //                   style: TextStyle(
                    //                     fontSize: 24,
                    //                     fontWeight: FontWeight.bold,
                    //                     color: Colors.black,
                    //                   ),
                    //                 ),
                    //               ),
                    //               Positioned(
                    //                 right: 15,
                    //                 bottom: 0,
                    //                 child: Image.asset(
                    //                   "assets/quote.png",
                    //                   height: 200,
                    //                   width: 180,
                    //                   fit: BoxFit.cover,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    CardPageView(cardGroups: cardGroups),

                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String _getMonthName(int month) {
  const monthNames = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  return monthNames[month - 1];
}
                    // // Calendar Row with Date and Day in Oval Shape
                    // SizedBox(
                    //   height: 100,
                    //   child: ListView.builder(
                    //     scrollDirection: Axis.horizontal,
                    //     itemCount: weekDates.length,
                    //     itemBuilder: (context, index) {
                    //       DateTime date = weekDates[index];
                    //       bool isToday = date.day == today.day &&
                    //           date.month == today.month &&
                    //           date.year == today.year;

                    //       return Padding(
                    //         padding:
                    //             const EdgeInsets.symmetric(horizontal: 8.0),
                    //         child: Column(
                    //           children: [
                    //             Container(
                    //               width: 60,
                    //               height: 60,
                    //               decoration: BoxDecoration(
                    //                 shape: BoxShape.circle,
                    //                 color: isToday
                    //                     ? Colors.purple
                    //                     : Colors.grey.shade300,
                    //               ),
                    //               child: Center(
                    //                 child: Text(
                    //                   DateFormat('d').format(date),
                    //                   style: TextStyle(
                    //                     fontSize: 20,
                    //                     color: isToday
                    //                         ? Colors.white
                    //                         : Colors.black,
                    //                     fontWeight: FontWeight.bold,
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //             const SizedBox(height: 5),
                    //             Text(
                    //               DateFormat('E').format(date),
                    //               style: TextStyle(
                    //                 color:
                    //                     isToday ? Colors.purple : Colors.white,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
