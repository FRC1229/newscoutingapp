import 'package:flutter/material.dart';
import 'package:scoutingapp2025/widgets.dart';

class PreGame extends StatefulWidget {
  const PreGame({Key? key, required this.inputs, required this.callback})
    : super(key: key);

  final inputs;
  final callback;

  @override
  _PreGameState createState() => _PreGameState();
}

class _PreGameState extends State<PreGame> {
  @override
  Widget build(BuildContext context) {
    double initialScreenWidth = MediaQuery.of(context).size.width;
    double initialScreenHeight = MediaQuery.of(context).size.height;

    // Print the initial height and width of the screen
    // print('Initial Screen Width: $initialScreenWidth');
    // print('Initial Screen Height: $initialScreenHeight');
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center everything horizontally
            children: [
              TextInput(
                title: 'Scouter Name',
                callback: (value) => send('ScouterName', value),
                initial: widget.inputs['ScouterName'],
              ),
              TextInput(
                title: 'Team Number',
                callback: (value) => send('team', value),
                initial: widget.inputs['team'],
              ),
              TextInput(
                title: 'Match Number',
                callback: (value) => send('MatchNumber', value),
                initial: widget.inputs['MatchNumber'],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void send(String tag, value) {
    setState(() => widget.inputs[tag] = value);
    widget.callback(widget.inputs);
  }
}
