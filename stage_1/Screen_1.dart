import 'package:flutter/material.dart';
import 'Screen_2.dart';

class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Padding(
              padding: EdgeInsets.all(30),
              child: Image(image: AssetImage('images/me.jpg')),//child 1
            ),
          Text('Mohammed Tohamy',style: TextStyle(fontSize: 25),), //child 2
          //Text('"mohammedtohamym" on GitHub',style: TextStyle(fontSize: 16),), //child 3
          Text(''), //child 4
          ElevatedButton(       //child 4
            child: Text('Open GitHub'),
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => SecondScreen()));
            },
          ),
        ],
      )
    );
  }

}