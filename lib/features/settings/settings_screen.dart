import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
        ),
        body: ListWheelScrollView(
          itemExtent: 200,
          children: [
            for (var x in [1, 2, 1, 1, 1, 1, 1])
              FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.teal,
                  child: const Text(
                    'pick me',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 39,
                    ),
                  ),
                ),
              ),
          ],
        ));
  }
}
