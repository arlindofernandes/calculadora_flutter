import 'package:flutter/material.dart';

sealed class ButtonClickEvent {
  final String value;

  ButtonClickEvent(this.value);
}

class CommonButtonClick extends ButtonClickEvent {
  CommonButtonClick(super.value);
}

class EqualsButtonClick extends ButtonClickEvent {
  EqualsButtonClick(super.value);
}

class ClearEntryButtonClick extends ButtonClickEvent {
  ClearEntryButtonClick(super.value);
}

class ClearButtonClick extends ButtonClickEvent {
  ClearButtonClick(super.value);
}

class ButtonHub extends StatelessWidget {
  final void Function(ButtonClickEvent clickEvent) onButtonClick;
  const ButtonHub({super.key, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
        Button(value: '', color: Theme.of(context).colorScheme.onPrimary),
        Button(
            value: 'CE',
            color: Theme.of(context).colorScheme.onPrimary,
            onTap: (value) => onButtonClick(ClearEntryButtonClick(value))),
        Button(
            value: 'C',
            color: Theme.of(context).colorScheme.onPrimary,
            onTap: (value) => onButtonClick(ClearButtonClick(value))),
        Button(
            value: '%',
            color: Theme.of(context).colorScheme.onPrimary,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '7',
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '8',
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '9',
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '/',
            color: Theme.of(context).colorScheme.onPrimary,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '4',
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '5',
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '6',
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '*',
            color: Theme.of(context).colorScheme.onPrimary,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '1',
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '2',
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '3',
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '+',
            color: Theme.of(context).colorScheme.onPrimary,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '-',
            color: Theme.of(context).colorScheme.onPrimary,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '0',
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '.',
            color: Theme.of(context).colorScheme.onPrimary,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '=',
            color: Theme.of(context).colorScheme.onTertiary,
            onTap: (value) => onButtonClick(EqualsButtonClick(value))),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String value;
  final Color? color;
  final void Function(String value)? onTap;
  const Button({super.key, required this.value, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorScheme.primary;
    return Material(
      color: color,
      child: InkWell(
        onTap: onTap == null ? null : () => onTap!(value),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Text(
              value,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: this.color == null
                      ? Theme.of(context).colorScheme.onPrimary
                      : null),
            ),
          ),
        ),
      ),
    );
  }
}
