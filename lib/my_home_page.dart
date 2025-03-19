import 'package:flutter/material.dart';
import 'package:scoutingapp2025/Auto.dart';
import 'package:scoutingapp2025/PostGame.dart';
import 'package:scoutingapp2025/PreGame.dart';
import 'TeleOp.dart';
import 'Endgame.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  var inputs = {
    'ScouterName': "",
    'team': '',
    'MatchNumber': "",
    'Starting Position': "",
    'Auto Coral L1': 0,
    'Auto Coral L2': 0,
    'Auto Coral L3': 0,
    'Auto Coral L4': 0,
    'Leave': false,
    'Remove Algae #': 0,
    'Teleop Coral L1': 0,
    'Teleop Coral L2': 0,
    'Teleop Coral L3': 0,
    'Teleop Coral L4': 0,
    "Miss #": 0,
    "Processor #": 0,
    "Net #": 0,
    "Defense Slider": "",
    "Climb": "",
    "Comments": "",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('Tidal Shift 1229')),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        children: [
          PreGame(
            inputs: inputs,
            callback: (value) => setState(() => inputs = value),
          ),
          Auto(
            inputs: inputs,
            callback: (value) => setState(() => inputs = value),
          ),
          TeloOp(
            inputs: inputs,
            callback: (value) => setState(() => inputs = value),
          ),
          Endgame(
            inputs: inputs,
            callback: (value) => setState(() => inputs = value),
          ),
          PostGame(
            inputs: inputs,
            callback: (value) => setState(() => inputs = value),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'PreGame',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_toy),
            label: 'Auto',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tele Op',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse),
            label: 'EndGame',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse),
            label: 'PostGame',
            backgroundColor: Color.fromARGB(255, 174, 25, 174),
          ),
        ],
      ),
    );
  }
}
