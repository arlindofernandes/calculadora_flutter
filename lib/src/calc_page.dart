import 'package:calculadora_flutter/src/controllers/calc_controller.dart';
import 'package:calculadora_flutter/src/widgets/button_hub.dart';
import 'package:calculadora_flutter/src/widgets/display.dart';
import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  final controller = CalcController();
  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_listener);
  }

  @override
  void dispose() {
    super.dispose();
    controller.removeListener(_listener);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Display(values: controller.display),
          ),
          Expanded(
            flex: 3,
            child: ButtonHub(onButtonClick: controller.onButtonClick),
          )
        ],
      ),
    );
  }
}
