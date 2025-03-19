import 'package:flutter/material.dart';
import 'widgets.dart';

class TeloOp extends StatefulWidget {
  const TeloOp({Key? key, required this.inputs, required this.callback})
    : super(key: key);

  final inputs;
  final callback;

  @override
  _TeloOpState createState() => _TeloOpState();
}

class _TeloOpState extends State<TeloOp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  Increment(
                    title: 'Teleop Coral L1',
                    callback: (value) => send('Teleop Coral L1', value),
                    value: widget.inputs['Teleop Coral L1'],
                  ),
                  Increment(
                    title: 'Teleop Coral L2',
                    callback: (value) => send('Teleop Coral L2', value),
                    value: widget.inputs['Teleop Coral L2'],
                  ),
                  Increment(
                    title: 'Teleop Coral L3',
                    callback: (value) => send('Teleop Coral L3', value),
                    value: widget.inputs['Teleop Coral L3'],
                  ),
                  Increment(
                    title: 'Teleop Coral L4',
                    callback: (value) => send('Teleop Coral L4', value),
                    value: widget.inputs['Teleop Coral L4'],
                  ),
                  Increment(
                    title: 'Miss #',
                    callback: (value) => send('Miss #', value),
                    value: widget.inputs['Miss #'],
                  ),
                  Increment(
                    title: 'Processor #',
                    callback: (value) => send('Processor #', value),
                    value: widget.inputs['Processor #'],
                  ),
                  Increment(
                    title: 'Net #',
                    callback: (value) => send('Net #', value),
                    value: widget.inputs['Net #'],
                  ),
                  TextInput(
                    title: 'Defense Slider',
                    callback: (value) => send('Defense Slider', value),
                    initial: widget.inputs['Defense Slider'],
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
