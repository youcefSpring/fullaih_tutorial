import 'package:flutter/material.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.redAccent,
          textTheme: ButtonTextTheme.accent
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black)
          )
        ) 
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.teal,
          leading: const Icon(
            Icons.access_alarm,
            color: Colors.black,
          ),
          title: const Text('Lesson One'),
          actions: const [
            Text('Lesson One'),
          ],
        ),
        body: Container(
          // alignment: Alignment.center, // into the widget
          color: Color.fromARGB(227, 189, 187, 214),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center, // the text into column
            children: [
              Row(
                children: [
                  Text(
                    'Hello Chlali ',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 39, 5, 134),
                      letterSpacing: 15,
                      wordSpacing: 30,
                      decoration: TextDecoration.combine(
                          [TextDecoration.underline, TextDecoration.overline]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  TextButton.icon(
                      onPressed: () => {},
                      icon: const Icon(Icons.access_alarm),
                      label: const Text('Text button with Icon'),
                      autofocus: true),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('OutlinedButton'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueAccent),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.amberAccent),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(10)),
                        elevation: MaterialStateProperty.all(0)),
                    onPressed: () => {},
                    icon: const Icon(Icons.login_rounded),
                    label: const Text('Elevated button login'),
                  ),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()=>{},
          backgroundColor: Colors.amberAccent,
          foregroundColor: Colors.blue,
          shape: const  RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30)
            ),
            side: BorderSide(
              color: Colors.greenAccent,
              width: 3,
              style: BorderStyle.solid
            ),
            
          ),
          splashColor: Colors.deepPurpleAccent,
          child : const  Icon(Icons.add_a_photo),
        ),
      ),
    );
  }
}
