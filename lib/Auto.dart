import 'package:flutter/material.dart';
import 'package:scoutingapp2025/widgets.dart';

class Auto extends StatefulWidget {
  const Auto({Key? key, required this.inputs, required this.callback})
    : super(key: key);

  final inputs;
  final callback;

  @override
  State<Auto> createState() => _AutoState();
}

class _AutoState extends State<Auto> {
  @override
  Widget build(BuildContext context) {
    double widthRatio =
        MediaQuery.of(context).size.width; // / initialScreenWidth;
    double heightRatio = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  TextInput(
                    title: "Starting Position",
                    callback: (value) => send('Starting Position', value),
                    initial: widget.inputs['Starting Position'],
                  ),
                  Increment(
                    title: 'Auto Coral L1',
                    callback: (value) => send('Auto Coral L1', value),
                    value: widget.inputs['Auto Coral L1'],
                  ),
                  Increment(
                    title: 'Auto Coral L2',
                    callback: (value) => send('Auto Coral L2', value),
                    value: widget.inputs['Auto Coral L2'],
                  ),
                  Increment(
                    title: 'Auto Coral L3',
                    callback: (value) => send('Auto Coral L3', value),
                    value: widget.inputs['Auto Coral L3'],
                  ),
                  Increment(
                    title: 'Auto Coral L4',
                    callback: (value) => send('Auto Coral L4', value),
                    value: widget.inputs['Auto Coral L4'],
                  ),
                  CheckboxInput(
                    title: 'Leave',
                    initial: widget.inputs['Leave'],
                    callback: (value) => send('Leave', value),
                  ),
                  Increment(
                    title: "Remove Algae #",
                    callback: (value) => send('Remove Algae #', value),
                    value: widget.inputs['Remove Algae #'],
                  ),
                ]),
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
