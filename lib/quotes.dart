import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ishipprj/details.dart';

void main() {
  runApp(QuoteApp());
}

class QuoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuoteScreen(),
    );
  }
}

class QuoteScreen extends StatelessWidget {
  final List<Map<String, String>> quotes = [
    {
      "quote": "You alone are enough. You have nothing to prove to anybody.",
      "author": "Maya Angelou"
    },
    {
      "quote": "The way to get started is to quit talking and begin doing.",
      "author": "Walt Disney"
    },
    {
      "quote": "Don't watch the clock; do what it does. Keep going.",
      "author": "Sam Levenson"
    },
    {
      "quote":
          "If life were predictable it would cease to be life, and be without flavor.",
      "author": "Eleanor Roosevelt"
    },
    {
      "quote": "Your limitation—it’s only your imagination.",
      "author": "Unknown"
    },
    {
      "quote": "Talk to yourself like you would to someone you love.",
      "author": "Brené Brown"
    },
    {
      "quote": "To fall in love with yourself is the first secret to happiness",
      "author": "Robert Morley"
    },
  ];

  // Updated grid items with emojis
  final List<Map<String, String>> gridItems = [
    {"name": "Happy", "emoji": "😊"},
    {"name": "Moody", "emoji": "😕"},
    {"name": "Sad", "emoji": "😢"},
    {"name": "Motivation", "emoji": "💪"},
    {"name": "Angry", "emoji": "😡"},
    {"name": "Hope", "emoji": "🌈"},
  ];

  // Quotes related to each emoji (10 quotes for each)
  final Map<String, List<Map<String, String>>> emojiQuotes = {
    "😊": [
      {
        "quote": "Happiness is not by chance, but by choice.",
        "author": "Jim Rohn"
      },
      {
        "quote":
            "The best way to cheer yourself is to try to cheer someone else up.",
        "author": "Mark Twain"
      },
      {
        "quote": "Count your rainbows, not your thunderstorms.",
        "author": "Anonymous"
      },
      {
        "quote":
            "Keep your face always toward the sunshine—and shadows will fall behind you.",
        "author": "Walt Whitman"
      },
      {
        "quote":
            "There is only one happiness in this life, to love and be loved.",
        "author": "George Sand"
      },
      {"quote": "Happiness is a warm puppy.", "author": "Charles M. Schulz"},
      {
        "quote": "The purpose of our lives is to be happy.",
        "author": "Dalai Lama"
      },
      {"quote": "Happiness depends upon ourselves.", "author": "Aristotle"},
      {
        "quote": "The only joy in the world is to begin.",
        "author": "Cesare Pavese"
      },
      {
        "quote": "Happiness is not a goal; it is a by-product.",
        "author": "Eleanor Roosevelt"
      },
    ],
    "😕": [
      {
        "quote":
            "Every day may not be good, but there’s something good in every day.",
        "author": "Alice Morse Earle"
      },
      {
        "quote": "The only thing we have to fear is fear itself.",
        "author": "Franklin D. Roosevelt"
      },
      {
        "quote": "Tough times never last, but tough people do.",
        "author": "Robert H. Schuller"
      },
      {
        "quote": "The best way to predict the future is to create it.",
        "author": "Peter Drucker"
      },
      {
        "quote":
            "If you can’t explain it simply, you don’t understand it well enough.",
        "author": "Albert Einstein"
      },
      {
        "quote": "Believe you can and you’re halfway there.",
        "author": "Theodore Roosevelt"
      },
      {
        "quote":
            "Challenges are what make life interesting, and overcoming them is what makes life meaningful.",
        "author": "Joshua J. Marine"
      },
      {
        "quote":
            "It does not matter how slowly you go as long as you do not stop.",
        "author": "Confucius"
      },
      {
        "quote":
            "You are never too old to set another goal or to dream a new dream.",
        "author": "C.S. Lewis"
      },
      {
        "quote": "Act as if what you do makes a difference. It does.",
        "author": "William James"
      },
    ],
    "😢": [
      {
        "quote": "Tears are words the heart can't express.",
        "author": "Gerard Way"
      },
      {
        "quote":
            "Crying doesn't indicate that you're weak. Ever since birth, it has been a sign that you are alive.",
        "author": "Charlie Chaplin"
      },
      {"quote": "It's okay to not be okay.", "author": "Anonymous"},
      {
        "quote": "Out of suffering have emerged the strongest souls.",
        "author": "Khalil Gibran"
      },
      {
        "quote":
            "You may have a broken heart, but you may also be broken open.",
        "author": "Rachel Naomi Remen"
      },
      {
        "quote": "Sadness is but a wall between two gardens.",
        "author": "Khalil Gibran"
      },
      {
        "quote":
            "Your pain is the breaking of the shell that encloses your understanding.",
        "author": "Khalil Gibran"
      },
      {
        "quote": "The wound is the place where the Light enters you.",
        "author": "Rumi"
      },
      {
        "quote":
            "If you’re feeling lonely, just look at the moon. It’s been there for you all the time.",
        "author": "Anonymous"
      },
      {"quote": "It’s okay to cry. Let it all out.", "author": "Anonymous"},
    ],
    "💪": [
      {
        "quote":
            "Strength does not come from physical capacity. It comes from an indomitable will.",
        "author": "Mahatma Gandhi"
      },
      {
        "quote":
            "The only limit to our realization of tomorrow will be our doubts of today.",
        "author": "Franklin D. Roosevelt"
      },
      {
        "quote":
            "What lies behind us and what lies before us are tiny matters compared to what lies within us.",
        "author": "Ralph Waldo Emerson"
      },
      {
        "quote":
            "You never know how strong you are until being strong is your only choice.",
        "author": "Bob Marley"
      },
      {
        "quote":
            "The weak can never forgive. Forgiveness is the attribute of the strong.",
        "author": "Mahatma Gandhi"
      },
      {
        "quote":
            "Strength is not just about what you can do. It’s about what you inspire others to do.",
        "author": "Anonymous"
      },
      {
        "quote":
            "Do not pray for an easy life, pray for the strength to endure a difficult one.",
        "author": "Bruce Lee"
      },
      {
        "quote": "Fall seven times, stand up eight.",
        "author": "Japanese Proverb"
      },
      {
        "quote": "It always seems impossible until it’s done.",
        "author": "Nelson Mandela"
      },
      {
        "quote":
            "Success is not final, failure is not fatal: It is the courage to continue that counts.",
        "author": "Winston S. Churchill"
      },
    ],
    "😡": [
      {
        "quote":
            "For every minute you are angry you lose sixty seconds of happiness.",
        "author": "Ralph Waldo Emerson"
      },
      {
        "quote": "Anger is a wind which blows out the lamp of the mind.",
        "author": "Robert Green Ingersoll"
      },
      {
        "quote":
            "Holding on to anger is like grasping a hot coal with the intent of throwing it at someone else; you are the one who gets burned.",
        "author": "Buddha"
      },
      {
        "quote": "Anger is the only thing to be angry about.",
        "author": "J. K. Rowling"
      },
      {
        "quote":
            "You will not be punished for your anger; you will be punished by your anger.",
        "author": "Buddha"
      },
      {"quote": "Anger is a choice.", "author": "Anonymous"},
      {"quote": "The greatest remedy for anger is delay.", "author": "Seneca"},
      {"quote": "Your anger is a gift.", "author": "Rage Against the Machine"},
      {
        "quote": "Be the change that you wish to see in the world.",
        "author": "Mahatma Gandhi"
      },
      {
        "quote":
            "Letting go of anger is the greatest gift you can give yourself.",
        "author": "Anonymous"
      },
    ],
    "🌈": [
      {
        "quote":
            "Life is not about waiting for the storm to pass but learning to dance in the rain.",
        "author": "Vivian Greene"
      },
      {
        "quote":
            "Hope is being able to see that there is light despite all of the darkness.",
        "author": "Desmond Tutu"
      },
      {
        "quote":
            "The future belongs to those who believe in the beauty of their dreams.",
        "author": "Eleanor Roosevelt"
      },
      {
        "quote":
            "You are never too old to set another goal or to dream a new dream.",
        "author": "C.S. Lewis"
      },
      {
        "quote": "In the middle of every difficulty lies opportunity.",
        "author": "Albert Einstein"
      },
      {
        "quote":
            "Your present circumstances don’t determine where you can go; they merely determine where you start.",
        "author": "Nido Qubein"
      },
      {
        "quote": "Keep your face to the sunshine and you cannot see a shadow.",
        "author": "Helen Keller"
      },
      {
        "quote": "A single dream is more powerful than a thousand realities.",
        "author": "J.R.R. Tolkien"
      },
      {
        "quote": "Hope is the thing with feathers that perches in the soul.",
        "author": "Emily Dickinson"
      },
      {
        "quote": "Optimism is the faith that leads to achievement.",
        "author": "Helen Keller"
      },
    ],
  };

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
          backgroundColor: Color(0xFF1A0129),
          title: Text(
            "Inspirational Quotes",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              color: Colors.white.withOpacity(0.95),
              fontSize: 24,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 250,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              viewportFraction: 0.8,
            ),
            itemCount: quotes.length,
            itemBuilder: (context, index, realIdx) {
              return Container(
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: Color(0xFF3D156E),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      // spreadRadius: 5,
                      // blurRadius: 2,
                      // offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '"${quotes[index]['quote']}"',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Arima',
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    Text(
                      "- ${quotes[index]['author']}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Arima',
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 40,
              // Reduced spacing for better layout
              mainAxisSpacing: 20,
              // Increased spacing for balance
              children: gridItems.map((item) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          emoji: item['emoji']!,
                          name: item['name']!,
                          quotes: emojiQuotes[item['emoji']]!,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF9C27B0), Color(0xFF673AB7)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          child: Text(
                            item['emoji'] ?? '',
                            style: TextStyle(
                              fontFamily: 'Arima',
                              fontSize: 30,
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          item['name'] ?? '',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Arima',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ])));
  }
}
