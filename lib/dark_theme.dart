import 'package:flutter/material.dart';


class DarkTheme extends StatefulWidget {
  const DarkTheme({super.key});

  @override
  State<DarkTheme> createState() => _MyAppState();
}

class _MyAppState extends State<DarkTheme> {
  bool _isDarkTheme = false;

  void _toggleTheme(bool value) {
  setState(() {
    _isDarkTheme = value;
  });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dark Theme',
      theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Dark Theme'),
        ),
        body: Center(
          child: Column(
            children: [
              const Text('Toggle Dark Theme'),
              Switch(
                value: _isDarkTheme,
                onChanged: _toggleTheme,
              ),
            ],
          ),
        ),
      ),
    );
  }
}