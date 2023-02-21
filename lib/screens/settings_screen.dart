import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'Settings';
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;
  int gender = 1;
  String name = 'Roberto';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ajustes',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
                ),
                const Divider(),
                SwitchListTile.adaptive(
                    title: const Text('Darkmode'),
                    value: isDarkMode,
                    onChanged: (value) {
                      isDarkMode = value;
                      setState(() {});
                    }),
                const Divider(),
                RadioListTile<int>(
                    title: const Text('Masculino'),
                    value: 1,
                    groupValue: gender,
                    onChanged: (value) {
                      gender = value ?? 1;
                      setState(() {});
                    }),
                const Divider(),
                RadioListTile<int>(
                    title: const Text('Femenino'),
                    value: 2,
                    groupValue: gender,
                    onChanged: (value) {
                      gender = value ?? 2;
                      setState(() {});
                    }),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    initialValue: 'Roberto',
                    decoration: const InputDecoration(
                        labelText: 'Nombre', helperText: 'Nombre del usuario'),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
