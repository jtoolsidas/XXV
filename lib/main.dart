import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'dart:async';
import 'package:math_expressions/math_expressions.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';
import 'package:screenshot/screenshot.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  // main method thats
  // run the RunMyApp
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'asd',
      theme: ThemeData(
        textTheme: GoogleFonts.juraTextTheme(),
      ),
      home: const DefaultTextStyle(
        style: TextStyle(fontWeight: FontWeight.w100),
        child: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/background-title.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Blue rectangle
          Align(
            alignment: const Alignment(0.0, 0.5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()),
                );
              },
              child: Container(
                width: 278,
                height: 176,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xff3d97f9)),
                alignment:
                    const Alignment(0.0, 0.0), // Center text inside the box
                child: const Text('TAP TO START', // Your text
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 50, // Font size
                      fontWeight: FontWeight.w900, // Bold text
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/backgroundmenu.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Blue rectangle
          Align(
            alignment: const Alignment(0.0, 0.23),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StagesScreen()),
                );
              },
              child: Container(
                  width: 278,
                  height: 108,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color(0xff3d97f9)),
                  alignment:
                      const Alignment(0.0, 0.0), // Center text inside the box
                  child: const Text('LEVELS', // Your text
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 50, // Font size
                        fontWeight: FontWeight.bold, // Bold text
                      ))),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, 0.60),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HowToScreen()),
                );
              },
              child: Container(
                  width: 278,
                  height: 108,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color(0xff3d97f9)),
                  alignment:
                      const Alignment(0.0, 0.0), // Center text inside the box
                  child: const Text('HOW TO', // Your text
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 50, // Font size
                        fontWeight: FontWeight.bold, // Bold text
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}

class StagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/backgroundnorm.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 80, // Adjust as needed for padding.
            left: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()),
                );
              },
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: const Color(0xff3d97f9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(8),
                child: const Text(
                  '<',
                  style: TextStyle(
                    color: Colors.white, // Text color.
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          // Blue rectangle
          Align(
            alignment: const Alignment(0.0, -0.55),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Stage1(levelTraits: levelTraits1)),
                );
              },
              child: Container(
                width: 278,
                height: 118,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xff3d97f9)),
                alignment:
                    const Alignment(0.0, 0.0), // Center text inside the box
                child: const Text('STAGE 1', // Your text
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 50, // Font size
                      fontWeight: FontWeight.bold, // Bold text
                    )),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, -0.15),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Stage2(levelTraits: levelTraits2)),
                );
              },
              child: Container(
                width: 278,
                height: 118,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xff3d97f9)),
                alignment:
                    const Alignment(0.0, 0.0), // Center text inside the box
                child: const Text('STAGE 2', // Your text
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 50, // Font size
                      fontWeight: FontWeight.bold, // Bold text
                    )),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, 0.25),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Stage3(levelTraits: levelTraits3)),
                );
              },
              child: Container(
                width: 278,
                height: 120,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xff3d97f9)),
                alignment:
                    const Alignment(0.0, 0.0), // Center text inside the box
                child: const Text('STAGE 3', // Your text
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 50, // Font size
                      fontWeight: FontWeight.bold, // Bold text
                    )),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, 0.67),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Stage4(levelTraits: levelTraits4)),
                );
              },
              child: Container(
                width: 278,
                height: 123,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xff3d97f9)),
                alignment:
                    const Alignment(0.0, 0.0), // Center text inside the box
                child: const Text('STAGE 4', // Your text
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 50, // Font size
                      fontWeight: FontWeight.bold, // Bold text
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HowToScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffE3F3FF), // Set the background color to blue.
        child: Stack(
          children: [
            // Back Button
            Positioned(
              top: 70, // Adjust as needed for padding.
              left: 30,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuScreen()),
                  );
                },
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: const Color(0xff3d97f9),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    '<',
                    style: TextStyle(
                      color: Colors.white, // Text color.
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 60, // Position the title below the back button.
              left: 145,
              right: 0,
              child: Text(
                'HOW TO',
                style: TextStyle(
                  color: Color(0xff3d97f9),
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Centered Instructions Box
            Positioned(
              top: 170, // Distance from the top of the screen.
              left: 40, // Distance from the left of the screen.
              right: 40,
              child: Container(
                width: 275,
                height: 676, // Width of the rectangle.
                padding:
                    const EdgeInsets.all(20), // Padding inside the rectangle.
                decoration: BoxDecoration(
                  color: const Color(0xff3d97f9),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: const Text(
                  'Welcome to XXV! \n \nIn this educational math game, use addition, subtraction, multiplication and division to manipulate 4 numbers to equal 25. \nTry to complete the levels as fast as you can to get the most points! \nShare your high scores with your friends on Instagram!',
                  style: TextStyle(
                    color: Colors.white, // Text color.
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> levelTraits1 = [
  'unlocked',
  'locked',
  'locked',
  'locked',
  'locked',
  'locked',
  'locked',
  'locked'
];

class Stage1 extends StatelessWidget {
  final List<String> levelTraits;

  Stage1({required this.levelTraits});
  Widget _buildBackButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context); // Navigate to the previous screen
      },
      child: Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          color: const Color(0xff3d97f9),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        alignment: Alignment.center, // Center the text in the button
        child: const Text(
          '<',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Text color
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Color themeColor = const Color(0xff3d97f9); // Reusable theme color

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/backgroundnorm.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 60, // Adjust this value to lower or raise the button
            left: 40, // Adjust this value to move it more to the right
            child: _buildBackButton(context),
          ),
          // Main content
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 110.0),
            child: Column(
              children: [
                const SizedBox(height: 20), // Space for the title
                const Text(
                  'STAGE 1',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3d97f9),
                  ),
                  textAlign: TextAlign.center,
                ),
                // Level buttons in rows
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // First row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 1, levelTraits1[0]),
                          _buildLevelButton(context, 2, levelTraits1[1]),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Second row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 3, levelTraits1[2]),
                          _buildLevelButton(context, 4, levelTraits1[3]),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Third row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 5, levelTraits1[4]),
                          _buildLevelButton(context, 6, levelTraits1[5]),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Fourth row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 7, levelTraits1[6]),
                          _buildLevelButton(context, 8, levelTraits1[7]),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build a level button
  Widget _buildLevelButton(BuildContext context, int level, String trait) {
    String? imagePath;

    // Assign image path based on the trait
    switch (trait) {
      case '1_star':
        imagePath = 'assets/1_star.png';
        break;
      case '2_stars':
        imagePath = 'assets/2_stars.png';
        break;
      case '3_stars':
        imagePath = 'assets/3_stars.png';
        break;
      case 'locked':
        imagePath = 'assets/locked.png';
        break;
      case 'unlocked':
      default:
        imagePath = null;
    }

    return GestureDetector(
      onTap: trait == 'locked'
          ? null // Disable interaction if locked
          : () {
              // Navigate to the specific level page
              switch (level) {
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen()),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen2()),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen3()),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen4()),
                  );
                  break;
                case 5:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen5()),
                  );
                  break;
                case 6:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen6()),
                  );
                  break;
                case 7:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen7()),
                  );
                  break;
                case 8:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen8()),
                  );
                  break;
                default:
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Level not implemented yet!')),
                  );
              }
            },
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background button
          Container(
            width: 130, // Adjust button size
            height: 130, // Keep it square
            decoration: BoxDecoration(
              color: const Color(0xff3d97f9),
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Colors.white.withOpacity(0.8),
                width: 1.5,
              ),
            ),
          ),
          Text(
            '$level',
            style: const TextStyle(
              fontSize: 75,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.black,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
          // Conditional overlay image
          if (imagePath != null)
            Positioned.fill(
              child: Opacity(
                opacity: 1,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

List<String> levelTraits2 = [
  'locked',
  'locked',
  'locked',
  'locked',
  'locked',
  'locked',
  'locked',
  'locked'
];

class Stage2 extends StatelessWidget {
  final List<String> levelTraits;

  Stage2({required this.levelTraits});

  Widget _buildBackButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context); // Navigate to the previous screen
      },
      child: Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          color: const Color(0xff3d97f9),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        alignment: Alignment.center, // Center the text in the button
        child: const Text(
          '<',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Text color
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Color themeColor = const Color(0xff3d97f9); // Reusable theme color

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/backgroundnorm.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 60, // Adjust this value to lower or raise the button
            left: 40, // Adjust this value to move it more to the right
            child: _buildBackButton(context),
          ),
          // Main content
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 110.0),
            child: Column(
              children: [
                const SizedBox(height: 20), // Space for the title
                const Text(
                  'STAGE 2',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3d97f9),
                  ),
                  textAlign: TextAlign.center,
                ),
                // Level buttons in rows
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // First row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 1, levelTraits2[0]),
                          _buildLevelButton(context, 2, levelTraits2[1]),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Second row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 3, levelTraits2[2]),
                          _buildLevelButton(context, 4, levelTraits2[3]),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Third row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 5, levelTraits2[4]),
                          _buildLevelButton(context, 6, levelTraits2[5]),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Fourth row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 7, levelTraits2[6]),
                          _buildLevelButton(context, 8, levelTraits2[7]),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build a level button
  Widget _buildLevelButton(BuildContext context, int level, String trait) {
    String? imagePath;

    // Assign image path based on the trait
    switch (trait) {
      case '1_star':
        imagePath = 'assets/1_star.png';
        break;
      case '2_stars':
        imagePath = 'assets/2_stars.png';
        break;
      case '3_stars':
        imagePath = 'assets/3_stars.png';
        break;
      case 'locked':
        imagePath = 'assets/locked.png';
        break;
      case 'unlocked':
      default:
        imagePath = null;
    }

    return GestureDetector(
      onTap: trait == 'locked'
          ? null // Disable interaction if locked
          : () {
              // Navigate to the specific level page
              switch (level) {
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen9()),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen10()),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen11()),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen12()),
                  );
                  break;
                case 5:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen13()),
                  );
                  break;
                case 6:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen14()),
                  );
                  break;
                case 7:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen15()),
                  );
                  break;
                case 8:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen16()),
                  );
                  break;
                default:
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Level not implemented yet!')),
                  );
              }
            },
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background button
          Container(
            width: 130, // Adjust button size
            height: 130, // Keep it square
            decoration: BoxDecoration(
              color: const Color(0xff3d97f9),
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Colors.white.withOpacity(0.8),
                width: 1.5,
              ),
            ),
          ),
          Text(
            '$level',
            style: const TextStyle(
              fontSize: 75,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.black,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
          // Conditional overlay image
          if (imagePath != null)
            Positioned.fill(
              child: Opacity(
                opacity: 1,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

List<String> levelTraits3 = [
  'locked',
  'locked',
  'locked',
  'locked',
  'locked',
  'locked',
  'locked',
  'locked'
];

class Stage3 extends StatelessWidget {
  final List<String> levelTraits;

  Stage3({required this.levelTraits});

  Widget _buildBackButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context); // Navigate to the previous screen
      },
      child: Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          color: const Color(0xff3d97f9),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        alignment: Alignment.center, // Center the text in the button
        child: const Text(
          '<',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Text color
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Color themeColor = const Color(0xff3d97f9); // Reusable theme color

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/backgroundnorm.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 60, // Adjust this value to lower or raise the button
            left: 40, // Adjust this value to move it more to the right
            child: _buildBackButton(context),
          ),
          // Main content
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 110.0),
            child: Column(
              children: [
                const SizedBox(height: 20), // Space for the title
                const Text(
                  'STAGE 3',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3d97f9),
                  ),
                  textAlign: TextAlign.center,
                ),
                // Level buttons in rows
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // First row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 1, levelTraits3[0]),
                          _buildLevelButton(context, 2, levelTraits3[1]),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Second row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 3, levelTraits3[2]),
                          _buildLevelButton(context, 4, levelTraits3[3]),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Third row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 5, levelTraits3[4]),
                          _buildLevelButton(context, 6, levelTraits3[5]),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Fourth row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 7, levelTraits3[6]),
                          _buildLevelButton(context, 8, levelTraits3[7]),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build a level button
  Widget _buildLevelButton(BuildContext context, int level, String trait) {
    String? imagePath;

    // Assign image path based on the trait
    switch (trait) {
      case '1_star':
        imagePath = 'assets/1_star.png';
        break;
      case '2_stars':
        imagePath = 'assets/2_stars.png';
        break;
      case '3_stars':
        imagePath = 'assets/3_stars.png';
        break;
      case 'locked':
        imagePath = 'assets/locked.png';
        break;
      case 'unlocked':
      default:
        imagePath = null;
    }

    return GestureDetector(
      onTap: trait == 'locked'
          ? null // Disable interaction if locked
          : () {
              // Navigate to the specific level page
              switch (level) {
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen17()),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen18()),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen19()),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen20()),
                  );
                  break;
                case 5:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen21()),
                  );
                  break;
                case 6:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen22()),
                  );
                  break;
                case 7:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen23()),
                  );
                  break;
                case 8:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen24()),
                  );
                  break;
                default:
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Level not implemented yet!')),
                  );
              }
            },
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background button
          Container(
            width: 130, // Adjust button size
            height: 130, // Keep it square
            decoration: BoxDecoration(
              color: const Color(0xff3d97f9),
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Colors.white.withOpacity(0.8),
                width: 1.5,
              ),
            ),
          ),
          Text(
            '$level',
            style: const TextStyle(
              fontSize: 75,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.black,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
          // Conditional overlay image
          if (imagePath != null)
            Positioned.fill(
              child: Opacity(
                opacity: 1,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

List<String> levelTraits4 = [
  'locked',
  'locked',
  'locked',
  'locked',
  'locked',
  'locked',
  'locked',
  'locked'
];

class Stage4 extends StatelessWidget {
  final List<String> levelTraits;

  Stage4({required this.levelTraits});
  Widget _buildBackButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context); // Navigate to the previous screen
      },
      child: Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          color: const Color(0xff3d97f9),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        alignment: Alignment.center, // Center the text in the button
        child: const Text(
          '<',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Text color
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Color themeColor = const Color(0xff3d97f9); // Reusable theme color

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/backgroundnorm.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 60, // Adjust this value to lower or raise the button
            left: 40, // Adjust this value to move it more to the right
            child: _buildBackButton(context),
          ),
          // Main content
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 110.0),
            child: Column(
              children: [
                const SizedBox(height: 20), // Space for the title
                const Text(
                  'STAGE 4',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3d97f9),
                  ),
                  textAlign: TextAlign.center,
                ),
                // Level buttons in rows
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // First row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 1, levelTraits4[0]),
                          _buildLevelButton(context, 2, levelTraits4[1]),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Second row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 3, levelTraits4[2]),
                          _buildLevelButton(context, 4, levelTraits4[3]),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Third row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 5, levelTraits4[4]),
                          _buildLevelButton(context, 6, levelTraits4[5]),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Fourth row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLevelButton(context, 7, levelTraits4[6]),
                          _buildLevelButton(context, 8, levelTraits4[7]),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build a level button
  Widget _buildLevelButton(BuildContext context, int level, String trait) {
    String? imagePath;

    // Assign image path based on the trait
    switch (trait) {
      case '1_star':
        imagePath = 'assets/1_star.png';
        break;
      case '2_stars':
        imagePath = 'assets/2_stars.png';
        break;
      case '3_stars':
        imagePath = 'assets/3_stars.png';
        break;
      case 'locked':
        imagePath = 'assets/locked.png';
        break;
      case 'unlocked':
      default:
        imagePath = null;
    }

    return GestureDetector(
      onTap: trait == 'locked'
          ? null // Disable interaction if locked
          : () {
              // Navigate to the specific level page
              switch (level) {
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen25()),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen26()),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen27()),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen28()),
                  );
                  break;
                case 5:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen29()),
                  );
                  break;
                case 6:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen30()),
                  );
                  break;
                case 7:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen31()),
                  );
                  break;
                case 8:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TimerScreen32()),
                  );
                  break;
                default:
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Level not implemented yet!')),
                  );
              }
            },
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background button
          Container(
            width: 130, // Adjust button size
            height: 130, // Keep it square
            decoration: BoxDecoration(
              color: const Color(0xff3d97f9),
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Colors.white.withOpacity(0.8),
                width: 1.5,
              ),
            ),
          ),
          Text(
            '$level',
            style: const TextStyle(
              fontSize: 75,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.black,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
          // Conditional overlay image
          if (imagePath != null)
            Positioned.fill(
              child: Opacity(
                opacity: 1,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['8', '2', '10', '5'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();

        if (_seconds < 30) {
          levelTraits1[0] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits1[0] = '2_stars';
        } else {
          levelTraits1[0] = '1_star';
        }
        if (levelTraits1[1] == 'locked') {
          levelTraits1[1] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [8, 2, 10, 5].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class PauseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/backgroundnorm.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Blue rectangle
          Align(
            alignment: const Alignment(0.0, -0.68),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context); // Close pause screen
              },
              child: Container(
                width: 278,
                height: 118,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xff3d97f9)),
                alignment:
                    const Alignment(0.0, 0.0), // Center text inside the box
                child: const Text('RESUME', // Your text
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 50, // Font size
                      fontWeight: FontWeight.bold, // Bold text
                    )),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, -0.23),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HowToScreen()),
                );
              },
              child: Container(
                width: 278,
                height: 118,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xff3d97f9)),
                alignment:
                    const Alignment(0.0, 0.0), // Center text inside the box
                child: const Text('HOW TO', // Your text
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 50, // Font size
                      fontWeight: FontWeight.bold, // Bold text
                    )),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, 0.23),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StagesScreen()),
                );
              },
              child: Container(
                width: 278,
                height: 120,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xff3d97f9)),
                alignment:
                    const Alignment(0.0, 0.0), // Center text inside the box
                child: const Text('LEVELS', // Your text
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 50, // Font size
                      fontWeight: FontWeight.bold, // Bold text
                    )),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, 0.71),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()),
                );
              },
              child: Container(
                width: 278,
                height: 123,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xff3d97f9)),
                alignment:
                    const Alignment(0.0, 0.0), // Center text inside the box
                child: const Text('QUIT', // Your text
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 50, // Font size
                      fontWeight: FontWeight.bold, // Bold text
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int timerValue;

  const ResultScreen({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 1.1 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen2()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen2 extends StatefulWidget {
  const TimerScreen2({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen2State createState() => _TimerScreen2State();
}

class _TimerScreen2State extends State<TimerScreen2> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['11', '4', '1', '9'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits1[1] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits1[1] = '2_stars';
        } else {
          levelTraits1[1] = '1_star';
        }
        if (levelTraits1[2] == 'locked') {
          levelTraits1[2] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen2(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [11, 4, 1, 9].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen2 extends StatelessWidget {
  final int timerValue;

  const ResultScreen2({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 1.2 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen3()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen3 extends StatefulWidget {
  const TimerScreen3({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen3State createState() => _TimerScreen3State();
}

class _TimerScreen3State extends State<TimerScreen3> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['13', '1', '6', '5'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits1[2] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits1[2] = '2_stars';
        } else {
          levelTraits1[2] = '1_star';
        }
        if (levelTraits1[3] == 'locked') {
          levelTraits1[3] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen3(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [13, 1, 6, 5].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen3 extends StatelessWidget {
  final int timerValue;

  const ResultScreen3({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 1.3 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen4()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen4 extends StatefulWidget {
  const TimerScreen4({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen4State createState() => _TimerScreen4State();
}

class _TimerScreen4State extends State<TimerScreen4> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['3', '5', '6', '11'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits1[3] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits1[3] = '2_stars';
        } else {
          levelTraits1[3] = '1_star';
        }
        if (levelTraits1[4] == 'locked') {
          levelTraits1[4] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen4(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [3, 5, 6, 11].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen4 extends StatelessWidget {
  final int timerValue;

  const ResultScreen4({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 1.4 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen5()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen5 extends StatefulWidget {
  const TimerScreen5({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen5State createState() => _TimerScreen5State();
}

class _TimerScreen5State extends State<TimerScreen5> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['8', '1', '8', '8'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count <= 3);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits1[4] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits1[4] = '2_stars';
        } else {
          levelTraits1[4] = '1_star';
        }
        if (levelTraits1[5] == 'locked') {
          levelTraits1[5] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen5(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [8, 1, 8, 8].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen5 extends StatelessWidget {
  final int timerValue;

  const ResultScreen5({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 1.5 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen6()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen6 extends StatefulWidget {
  const TimerScreen6({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen6State createState() => _TimerScreen6State();
}

class _TimerScreen6State extends State<TimerScreen6> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['4', '3', '9', '9'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count <= 2);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits1[5] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits1[5] = '2_stars';
        } else {
          levelTraits1[5] = '1_star';
        }
        if (levelTraits1[6] == 'locked') {
          levelTraits1[6] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen6(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [4, 3, 9, 9].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen6 extends StatelessWidget {
  final int timerValue;

  const ResultScreen6({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 1.6 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen7()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen7 extends StatefulWidget {
  const TimerScreen7({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen7State createState() => _TimerScreen7State();
}

class _TimerScreen7State extends State<TimerScreen7> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['8', '5', '4', '8'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count <= 2);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits1[6] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits1[6] = '2_stars';
        } else {
          levelTraits1[6] = '1_star';
        }
        if (levelTraits1[7] == 'locked') {
          levelTraits1[7] = 'unlocked';
        }

        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen7(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [8, 5, 4, 8].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen7 extends StatelessWidget {
  final int timerValue;

  const ResultScreen7({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 1.7 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen8()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen8 extends StatefulWidget {
  const TimerScreen8({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen8State createState() => _TimerScreen8State();
}

class _TimerScreen8State extends State<TimerScreen8> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['3', '5', '8', '9'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits1[7] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits1[7] = '2_stars';
        } else {
          levelTraits1[7] = '1_star';
        }
        if (levelTraits2[0] == 'locked') {
          levelTraits2[0] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen8(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [3, 5, 8, 9].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen8 extends StatelessWidget {
  final int timerValue;

  const ResultScreen8({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 1.8 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen9()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen9 extends StatefulWidget {
  const TimerScreen9({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen9State createState() => _TimerScreen9State();
}

class _TimerScreen9State extends State<TimerScreen9> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['12', '10', '1', '4'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits2[0] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits2[0] = '2_stars';
        } else {
          levelTraits2[0] = '1_star';
        }
        if (levelTraits2[1] == 'locked') {
          levelTraits2[1] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen9(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [12, 10, 1, 4].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen9 extends StatelessWidget {
  final int timerValue;

  const ResultScreen9({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 2.1 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen10()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen10 extends StatefulWidget {
  const TimerScreen10({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen10State createState() => _TimerScreen10State();
}

class _TimerScreen10State extends State<TimerScreen10> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['9', '16', '15', '3'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits2[1] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits2[1] = '2_stars';
        } else {
          levelTraits2[1] = '1_star';
        }
        if (levelTraits2[2] == 'locked') {
          levelTraits2[2] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen10(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [9, 16, 15, 3].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen10 extends StatelessWidget {
  final int timerValue;

  const ResultScreen10({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 2.2 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen11()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen11 extends StatefulWidget {
  const TimerScreen11({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen11State createState() => _TimerScreen11State();
}

class _TimerScreen11State extends State<TimerScreen11> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['14', '20', '9', '18'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits2[2] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits2[2] = '2_stars';
        } else {
          levelTraits2[2] = '1_star';
        }
        if (levelTraits2[3] == 'locked') {
          levelTraits2[3] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen11(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [14, 20, 9, 18].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen11 extends StatelessWidget {
  final int timerValue;

  const ResultScreen11({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 2.3 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen12()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen12 extends StatefulWidget {
  const TimerScreen12({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen12State createState() => _TimerScreen12State();
}

class _TimerScreen12State extends State<TimerScreen12> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['19', '14', '2', '10'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits2[3] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits2[3] = '2_stars';
        } else {
          levelTraits2[3] = '1_star';
        }
        if (levelTraits2[4] == 'locked') {
          levelTraits2[4] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen12(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [19, 14, 2, 10].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen12 extends StatelessWidget {
  final int timerValue;

  const ResultScreen12({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 2.4 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen13()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen13 extends StatefulWidget {
  const TimerScreen13({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen13State createState() => _TimerScreen13State();
}

class _TimerScreen13State extends State<TimerScreen13> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['10', '2', '6', '11'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits2[4] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits2[4] = '2_stars';
        } else {
          levelTraits2[4] = '1_star';
        }
        if (levelTraits2[5] == 'locked') {
          levelTraits2[5] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen13(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [10, 2, 6, 11].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen13 extends StatelessWidget {
  final int timerValue;

  const ResultScreen13({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 2.5 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen14()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen14 extends StatefulWidget {
  const TimerScreen14({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen14State createState() => _TimerScreen14State();
}

class _TimerScreen14State extends State<TimerScreen14> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['16', '7', '5', '3'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits2[5] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits2[5] = '2_stars';
        } else {
          levelTraits2[5] = '1_star';
        }
        if (levelTraits2[6] == 'locked') {
          levelTraits2[6] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen14(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [16, 7, 5, 3].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen14 extends StatelessWidget {
  final int timerValue;

  const ResultScreen14({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 2.6 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen15()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen15 extends StatefulWidget {
  const TimerScreen15({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen15State createState() => _TimerScreen15State();
}

class _TimerScreen15State extends State<TimerScreen15> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['11', '9', '1', '6'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits2[6] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits2[6] = '2_stars';
        } else {
          levelTraits2[6] = '1_star';
        }
        if (levelTraits2[7] == 'locked') {
          levelTraits2[7] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen15(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [11, 9, 1, 6].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen15 extends StatelessWidget {
  final int timerValue;

  const ResultScreen15({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 2.7 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen16()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen16 extends StatefulWidget {
  const TimerScreen16({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen16State createState() => _TimerScreen16State();
}

class _TimerScreen16State extends State<TimerScreen16> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['20', '8', '5', '8'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count <= 2);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits2[7] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits2[7] = '2_stars';
        } else {
          levelTraits2[7] = '1_star';
        }
        if (levelTraits3[0] == 'locked') {
          levelTraits3[0] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen16(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [20, 8, 5, 8].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen16 extends StatelessWidget {
  final int timerValue;

  const ResultScreen16({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 2.8 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen17()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen17 extends StatefulWidget {
  const TimerScreen17({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen17State createState() => _TimerScreen17State();
}

class _TimerScreen17State extends State<TimerScreen17> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['6', '5', '2', '3'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();

        if (_seconds < 30) {
          levelTraits3[0] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits3[0] = '2_stars';
        } else {
          levelTraits3[0] = '1_star';
        }
        if (levelTraits3[1] == 'locked') {
          levelTraits3[1] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen17(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [6, 5, 2, 3].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen17 extends StatelessWidget {
  final int timerValue;

  const ResultScreen17({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 3.1 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen18()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen18 extends StatefulWidget {
  const TimerScreen18({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen18State createState() => _TimerScreen18State();
}

class _TimerScreen18State extends State<TimerScreen18> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['7', '3', '4', '1'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits3[1] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits3[1] = '2_stars';
        } else {
          levelTraits3[1] = '1_star';
        }
        if (levelTraits3[2] == 'locked') {
          levelTraits3[2] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen18(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [7, 3, 4, 1].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen18 extends StatelessWidget {
  final int timerValue;

  const ResultScreen18({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 3.2 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen19()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen19 extends StatefulWidget {
  const TimerScreen19({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen19State createState() => _TimerScreen19State();
}

class _TimerScreen19State extends State<TimerScreen19> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['12', '2', '3', '2'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count <= 2);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits3[2] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits3[2] = '2_stars';
        } else {
          levelTraits3[2] = '1_star';
        }
        if (levelTraits3[3] == 'locked') {
          levelTraits3[3] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen19(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [12, 2, 3, 2].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen19 extends StatelessWidget {
  final int timerValue;

  const ResultScreen19({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 3.3 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen20()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen20 extends StatefulWidget {
  const TimerScreen20({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen20State createState() => _TimerScreen20State();
}

class _TimerScreen20State extends State<TimerScreen20> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['10', '6', '9', '4'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits3[3] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits3[3] = '2_stars';
        } else {
          levelTraits3[3] = '1_star';
        }
        if (levelTraits3[4] == 'locked') {
          levelTraits3[4] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen20(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [10, 6, 9, 4].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen20 extends StatelessWidget {
  final int timerValue;

  const ResultScreen20({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 3.4 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen21()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen21 extends StatefulWidget {
  const TimerScreen21({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen21State createState() => _TimerScreen21State();
}

class _TimerScreen21State extends State<TimerScreen21> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['13', '7', '2', '3'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits3[4] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits3[4] = '2_stars';
        } else {
          levelTraits3[4] = '1_star';
        }
        if (levelTraits3[5] == 'locked') {
          levelTraits3[5] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen21(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [13, 7, 2, 3].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen21 extends StatelessWidget {
  final int timerValue;

  const ResultScreen21({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 3.5 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen21()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen22 extends StatefulWidget {
  const TimerScreen22({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen22State createState() => _TimerScreen22State();
}

class _TimerScreen22State extends State<TimerScreen22> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['9', '4', '5', '6'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits3[5] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits3[5] = '2_stars';
        } else {
          levelTraits3[5] = '1_star';
        }
        if (levelTraits3[6] == 'locked') {
          levelTraits3[6] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen22(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [9, 4, 5, 6].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen22 extends StatelessWidget {
  final int timerValue;

  const ResultScreen22({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 3.6 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen23()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen23 extends StatefulWidget {
  const TimerScreen23({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen23State createState() => _TimerScreen23State();
}

class _TimerScreen23State extends State<TimerScreen23> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['7', '3', '3', '1'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count <= 2);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits3[6] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits3[6] = '2_stars';
        } else {
          levelTraits3[6] = '1_star';
        }
        if (levelTraits3[7] == 'locked') {
          levelTraits3[7] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen23(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [7, 3, 3, 1].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen23 extends StatelessWidget {
  final int timerValue;

  const ResultScreen23({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 3.7 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen24()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen24 extends StatefulWidget {
  const TimerScreen24({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen24State createState() => _TimerScreen24State();
}

class _TimerScreen24State extends State<TimerScreen24> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['11', '4', '3', '4'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count <= 2);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits3[7] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits3[7] = '2_stars';
        } else {
          levelTraits3[7] = '1_star';
        }
        if (levelTraits4[0] == 'locked') {
          levelTraits4[0] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen24(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [11, 4, 3, 4].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen24 extends StatelessWidget {
  final int timerValue;

  const ResultScreen24({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 3.8 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen25()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen25 extends StatefulWidget {
  const TimerScreen25({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen25State createState() => _TimerScreen25State();
}

class _TimerScreen25State extends State<TimerScreen25> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['20', '5', '7', '3'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      print(result);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits4[0] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits4[0] = '2_stars';
        } else {
          levelTraits4[0] = '1_star';
        }
        if (levelTraits4[1] == 'locked') {
          levelTraits4[1] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen25(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [20, 5, 7, 3].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen25 extends StatelessWidget {
  final int timerValue;

  const ResultScreen25({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 4.1 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen26()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen26 extends StatefulWidget {
  const TimerScreen26({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen26State createState() => _TimerScreen26State();
}

class _TimerScreen26State extends State<TimerScreen26> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['18', '3', '1', '4'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits4[1] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits4[1] = '2_stars';
        } else {
          levelTraits4[1] = '1_star';
        }
        if (levelTraits4[2] == 'locked') {
          levelTraits4[2] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen26(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [18, 3, 1, 4].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen26 extends StatelessWidget {
  final int timerValue;

  const ResultScreen26({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 4.2 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen27()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen27 extends StatefulWidget {
  const TimerScreen27({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen27State createState() => _TimerScreen27State();
}

class _TimerScreen27State extends State<TimerScreen27> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['15', '8', '1', '5'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count <= 2);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits4[2] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits4[2] = '2_stars';
        } else {
          levelTraits4[2] = '1_star';
        }
        if (levelTraits4[3] == 'locked') {
          levelTraits4[3] = 'unlocked';
        }
        ;
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen27(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [15, 8, 1, 5].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen27 extends StatelessWidget {
  final int timerValue;

  const ResultScreen27({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 4.3 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen28()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen28 extends StatefulWidget {
  const TimerScreen28({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen28State createState() => _TimerScreen28State();
}

class _TimerScreen28State extends State<TimerScreen28> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['2', '4', '12', '1'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits4[3] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits4[3] = '2_stars';
        } else {
          levelTraits4[3] = '1_star';
        }
        if (levelTraits4[4] == 'locked') {
          levelTraits4[4] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen28(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [2, 4, 12, 1].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen28 extends StatelessWidget {
  final int timerValue;

  const ResultScreen28({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 4.4 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen29()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen29 extends StatefulWidget {
  const TimerScreen29({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen29State createState() => _TimerScreen29State();
}

class _TimerScreen29State extends State<TimerScreen29> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['20', '4', '4', '5'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count <= 2);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits4[4] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits4[4] = '2_stars';
        } else {
          levelTraits4[4] = '1_star';
        }
        if (levelTraits4[5] == 'locked') {
          levelTraits4[5] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen29(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [20, 4, 4, 5].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen29 extends StatelessWidget {
  final int timerValue;

  const ResultScreen29({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 4.5 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen30()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen30 extends StatefulWidget {
  const TimerScreen30({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen30State createState() => _TimerScreen30State();
}

class _TimerScreen30State extends State<TimerScreen30> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['16', '2', '3', '1'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits4[5] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits4[5] = '2_stars';
        } else {
          levelTraits4[5] = '1_star';
        }
        if (levelTraits4[6] == 'locked') {
          levelTraits4[6] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen30(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [16, 2, 3, 1].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen30 extends StatelessWidget {
  final int timerValue;

  const ResultScreen30({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 4.6 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen31()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen31 extends StatefulWidget {
  const TimerScreen31({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen31State createState() => _TimerScreen31State();
}

class _TimerScreen31State extends State<TimerScreen31> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['3', '9', '11', '8'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid inputr
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits4[6] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits4[6] = '2_stars';
        } else {
          levelTraits4[6] = '1_star';
        }
        if (levelTraits4[7] == 'locked') {
          levelTraits4[7] = 'unlocked';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen31(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [3, 9, 11, 8].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen31 extends StatelessWidget {
  final int timerValue;

  const ResultScreen31({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: const Text('LEVEL 4.7 COMPLETE',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640.0, left: 45.0, right: 20.0),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing between buttons
              runSpacing: 15.0, // Vertical spacing between rows
              alignment: WrapAlignment.center, // Aligns buttons to the center
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button widt
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    // Try to open Instagram
                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        // Handle the case where Instagram is not available
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                // Next Level Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen32()),
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'NEXT LEVEL',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimerScreen32 extends StatefulWidget {
  const TimerScreen32({Key? key}) : super(key: key);
  //final double levelDecimal;
  @override
  _TimerScreen32State createState() => _TimerScreen32State();
}

class _TimerScreen32State extends State<TimerScreen32> {
  Timer? _timer;
  int _seconds = 0;
  bool _isPaused = false;
  String _textBoxContent = '';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  /*void _resumeTimer() {
  _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      _seconds++;
    });
  }); 
} */

  /*void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  } */

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _updateTextBox(String content) {
    setState(() {
      _textBoxContent += content;
    });
  }

  bool _showRedOverlay = false; // To track when to show the red screen
  bool _showGreenOverlay = false;

  void _flashGreen() async {
    setState(() {
      _showGreenOverlay = true; // Show the green overlay
    });
    await Future.delayed(const Duration(milliseconds: 300)); // Delay for 300ms
    setState(() {
      _showGreenOverlay = false; // Hide the green overlay
    });
  }

  void _flashRed() {
    setState(() {
      _textBoxContent = ''; // Reset the text box
    });

    OverlayEntry overlay = OverlayEntry(
      builder: (context) {
        return Positioned.fill(
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );

    Overlay.of(context).insert(overlay);

    Future.delayed(const Duration(milliseconds: 300), () {
      overlay.remove(); // Remove the red overlay
    });
  }

  bool isValidExpression(String input) {
    // List of allowed numbers
    final allowedNumbers = ['14', '2', '3', '4'];

    // Count occurrences of each allowed number in the input
    final numberCounts = <String, int>{};
    for (var number in allowedNumbers) {
      numberCounts[number] = RegExp('\\b$number\\b').allMatches(input).length;
    }

    // If any number appears more than once, the expression is invalid
    return numberCounts.values.every((count) => count == 1);
  }

  void _evaluateExpression() {
    if (!isValidExpression(_textBoxContent)) {
      // Show an error message if the expression is invalid
      print("Invalid input: Each number can only be used once.");
      _flashRed(); // Flash red to indicate invalid input
      return;
    }

    try {
      // Evaluate the expression
      final result = _calculateExpression(_textBoxContent);
      if (result == 25) {
        _timer?.cancel();
        if (_seconds < 30) {
          levelTraits4[7] = '3_stars';
        } else if (_seconds < 60) {
          levelTraits4[7] = '2_stars';
        } else {
          levelTraits4[7] = '1_star';
        }
        // Navigate to the new screen with the timer value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen32(
              timerValue: _seconds,
            ),
          ),
        );
      } else {
        _flashRed(); // Flash red if the result is not 25
      }
    } catch (e) {
      _flashRed(); // Flash red if there is an error in the expression
    }
  }

  double _calculateExpression(String expression) {
    try {
      // Replace custom symbols with standard math symbols
      final sanitizedExpression = expression
          .replaceAll('×', '*') // Replace multiplication symbol
          .replaceAll('÷', '/'); // Replace division symbol

      // Use the math_expressions library to parse and evaluate the expression
      Parser parser = Parser();
      Expression exp = parser.parse(sanitizedExpression);
      ContextModel contextModel = ContextModel();

      // Evaluate the expression and return the result
      return exp.evaluate(EvaluationType.REAL, contextModel);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F3FF),
      body: Stack(
        children: [
          Column(
            children: [
              // Timer and Pause Button
              Padding(
                padding: const EdgeInsets.only(
                    top: 65.0, left: 40.0, right: 2.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Pause Button
                    Container(
                      width: 80, // Circle width
                      height: 80, // Circle height
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Makes it circular
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_isPaused) {
                              _timer?.cancel(); // Stop the timer
                              _isPaused = true; // Set pause state
                            }
                          });
                          // Navigate to the Pause screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PauseScreen(),
                            ),
                          ).then((value) {
                            // Resume the timer when coming back from the pause screen
                            setState(() {
                              _isPaused = false; // Reset the pause state
                              _timer = Timer.periodic(
                                  const Duration(seconds: 1), (timer) {
                                setState(() {
                                  _seconds++;
                                });
                              });
                            });
                          });
                        },
                        icon: Icon(
                          _isPaused
                              ? Icons.play_arrow
                              : Icons.pause, // Play or Pause icon
                          color: Colors.white, // Icon color
                          size: 60, // Icon size
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 75), // Spacing between button and timer

                    // Timer Display
                    Container(
                      width: 160, // Fixed width
                      height: 78, // Fixed height
                      alignment:
                          Alignment.center, // Ensures the text stays centered
                      decoration: BoxDecoration(
                        color: const Color(0xFF0087D6), // Background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded rectangle
                      ),
                      child: Text(
                        _formatTime(_seconds), // Timer text
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Timer text color
                        ),
                        textAlign:
                            TextAlign.center, // Centers text horizontally
                      ),
                    ),
                  ],
                ),
              ),
              // 4 Large Buttons in 2x2 Grid
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures the column does not take extra vertical space
                  children: [
                    Wrap(
                      spacing: 7, // Horizontal spacing between buttons
                      runSpacing: 7, // Vertical spacing between rows of buttons
                      children: [14, 2, 3, 4].map((number) {
                        return GestureDetector(
                          onTap: () => _updateTextBox('$number'),
                          child: Container(
                            width: 150, // Adjust size as needed
                            height: 150, // Ensure square buttons
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D97F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Fixed Size Text Box
              Center(
                child: Container(
                  width: 310, // Fixed width
                  height: 80, // Fixed height
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment
                        .center, // Centers the Text within the Container
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      _textBoxContent,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3583D6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // 6 Smaller Buttons with Icons
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 30, bottom: 10),
                child: Wrap(
                  spacing: 8, // Horizontal spacing between buttons
                  runSpacing: 8, // Vertical spacing between rows of buttons
                  children: [
                    {
                      'icon': Icons.add,
                      'symbol': '+',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.remove,
                      'symbol': '-',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.arrow_back,
                      'symbol': 'clear',
                      'color': const Color(0xFFFF7A7A),
                      'iconColor': const Color(0xFFAC0000)
                    },
                    {
                      'icon': Icons.close,
                      'symbol': '×',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.percent,
                      'symbol': '÷',
                      'color': const Color(0xFF0087D6),
                      'iconColor': Colors.white
                    },
                    {
                      'icon': Icons.check,
                      'symbol': null,
                      'color': const Color(0xFF81DF92),
                      'iconColor': const Color(0xFF186927)
                    },
                  ].map<Widget>((buttonData) {
                    return GestureDetector(
                      onTap: () {
                        if (buttonData['symbol'] == 'clear') {
                          // Remove last input from the text box
                          setState(() {
                            if (_textBoxContent.isNotEmpty) {
                              // Check if the last two characters form a two-digit number
                              final regex = RegExp(
                                  r'\d{2}$'); // Matches two digits at the end
                              if (regex.hasMatch(_textBoxContent)) {
                                // Remove the last two characters
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 2);
                              } else {
                                // Remove only the last character
                                _textBoxContent = _textBoxContent.substring(
                                    0, _textBoxContent.length - 1);
                              }
                            }
                          });
                        } else if (buttonData['symbol'] != null) {
                          setState(() {
                            // Validate the input
                            _textBoxContent += buttonData['symbol'] as String;
                          });
                        } else if (buttonData['icon'] == Icons.check) {
                          _evaluateExpression(); // Evaluate the expression
                        }
                      },
                      child: Container(
                        width: 110, // Adjust size for consistent button layout
                        height: 110, // Ensure square buttons
                        decoration: BoxDecoration(
                          color: buttonData['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          buttonData['icon'] as IconData,
                          color: buttonData['iconColor']
                              as Color, // Dynamic icon color
                          size: 65, // Icon size
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // Red Overlay
          if (_showRedOverlay)
            Container(
              color: Colors.red,
            ),
          // Green Overlay
          if (_showGreenOverlay)
            Container(
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

class ResultScreen32 extends StatelessWidget {
  final int timerValue;

  const ResultScreen32({Key? key, required this.timerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the result
    final double calculation = 999 - 11.1 * timerValue;
    final int roundedResult = max(calculation.toInt(), 0); // Convert to integer

    // Choose background image based on timer value
    String backgroundImage;
    if (timerValue < 30) {
      backgroundImage = 'assets/clear3stars.png';
    } else if (timerValue < 60) {
      backgroundImage = 'assets/clear2stars.png';
    } else {
      backgroundImage = 'assets/clear1star.png';
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text box displaying the calculated result
          Positioned(
            top: 60, // Adjust as needed for placement
            left: 20,
            right: 20,
            child: Container(
              height: 70, // Height of the text box
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  '$roundedResult',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              child: const Text('ALL LEVELS COMPLETE!',
                  style: TextStyle(
                    fontSize: 60,
                    height: 1.25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0087D6),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 680.0, left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // Space buttons evenly
              children: [
                // Levels Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StagesScreen()),
                    );
                  },
                  child: Container(
                    width: 150, // Button width
                    height: 80, // Button height
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6), // Blue color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'LEVELS',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Menu Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 120,
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0087D6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Replay Button
                GestureDetector(
                  onTap: () async {
                    final String instagramURL = "https://www.instagram.com/";

                    try {
                      final Uri uri = Uri.parse(instagramURL);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      } else {
                        print("Instagram is not installed or URL is invalid.");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Instagram app is not available!")),
                        );
                      }
                    } catch (e) {
                      print("Error launching Instagram: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Unable to open Instagram!")),
                      );
                    }
                  },
                  child: Container(
                    width: 65,
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xFF3D97F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
