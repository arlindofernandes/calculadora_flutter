import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String values;
  const Display({super.key, required this.values});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          values,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
