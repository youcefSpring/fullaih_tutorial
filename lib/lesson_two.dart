import 'package:flutter/material.dart';

class LessonTwo extends StatefulWidget{
  const LessonTwo({super.key});

  @override
  State<StatefulWidget> createState() => _LessonTwoState();

}

class _LessonTwoState extends State <LessonTwo>{
 int _counter = 0;
 var c =Colors.green;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
        backgroundColor: c,
      ),
      body: Center(
        child: Text('The counter is: $_counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed : (){
            _incrementCounter();
            setState(() {
              c=Colors.lightBlue;
            });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    ));
  }
}