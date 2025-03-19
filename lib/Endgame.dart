import 'package:flutter/material.dart';
import 'widgets.dart';

class Endgame extends StatefulWidget {
  const Endgame({super.key, required this.inputs, required this.callback});
  final inputs;
  final callback;
  @override
  _Endgame createState() => _Endgame();
}

class _Endgame extends State<Endgame> {
  @override
  Widget build(BuildContext context) {
    double initialScreenWidth = MediaQuery.of(context).size.width;
    double initialScreenHeight = MediaQuery.of(context).size.height;
    const double boxWid = 160;
    const double boxHgt = 9;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextInput(
                  title: 'Climb',
                  callback: (value) => send('Climb', value),
                  initial: widget.inputs['Climb'],
                ),
                TextInput(
                  title: 'Comments',
                  callback: (value) => send('Comments', value),
                  initial: widget.inputs['Comments'],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void send(String tag, value) {
    setState(() => widget.inputs[tag] = value);
    widget.callback(widget.inputs);
  }
}
