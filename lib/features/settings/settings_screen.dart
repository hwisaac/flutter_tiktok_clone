import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notification = false;

  void _onNotificationsChanged(bool? newValue) {
    if (newValue == null) return;
    setState(() {
      _notification = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
        ),
        body: ListView(
          children: [
            SwitchListTile.adaptive(
              value: _notification,
              onChanged: _onNotificationsChanged,
              title: const Text("Enable notifications"),
              subtitle: const Text("Enable notifications"),
            ),
            CheckboxListTile(
              activeColor: Colors.black,
              value: _notification,
              onChanged: _onNotificationsChanged,
              title: const Text("Marketing emails"),
              subtitle: const Text("We won't spam you."),
            ),
            ListTile(
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1980),
                  lastDate: DateTime(2030),
                );
                print(date);
                final time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                print(time);
                final booking = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime(1980),
                  lastDate: DateTime(2030),
                );
                print(booking);
              },
              title: Text("What is your birthday?"),
              subtitle: const Text("I need to know"),
            ),
            ListTile(
              title: Text("Log out(iOS)"),
              textColor: Colors.red,
              onTap: () {
                showCupertinoDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                    title: const Text("Are you sure?"),
                    content: const Text("Pls don't go"),
                    actions: [
                      CupertinoDialogAction(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text("No"),
                      ),
                      CupertinoDialogAction(
                        onPressed: () => Navigator.of(context).pop(),
                        isDestructiveAction: true,
                        child: const Text("Yes"),
                      ),
                    ],
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Log out(android)"),
              textColor: Colors.red,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Are you sure?"),
                    content: const Text("Pls don't go"),
                    actions: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: FaIcon(FontAwesomeIcons.car),
                      ),
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: FaIcon(FontAwesomeIcons.car),
                      ),
                    ],
                  ),
                );
              },
            ),
            const AboutListTile(),
          ],
        ));
  }
}
