import 'package:flutter/material.dart';



class PasswordVisbility extends StatefulWidget {
  const PasswordVisbility({super.key});

  @override
  State<PasswordVisbility> createState() => _MyAppState();
}

class _MyAppState extends State<PasswordVisbility> {
  bool _obscureText = true;

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Password Visibility',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Password Visibility'),
        ),
        body: Center(
          child: TextField(
            obscureText: _obscureText,
            decoration: InputDecoration(
              border: const  OutlineInputBorder(),
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                onPressed: _toggleObscureText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}