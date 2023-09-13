import 'package:flutter/material.dart';
import 'Screen_2.dart';

class FirstScreen extends StatefulWidget {

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }



// class FirstScreen extends StatelessWidget{
//   const FirstScreen({super.key});

  List<String> names = ['Mohammed Tohamy',
                        'Mohammed Tohamy',
                        '@mohammedtohamym',
                        'I\'m learing software engineering, and I\'m currently in stage 2 in HNGx for the mobile development track'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(''),
          Text(''),
          Text('This is my CV', style: TextStyle(fontSize: 40, backgroundColor: Color.fromRGBO(53, 145, 238, 1),),),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                    // Padding(
                    //   padding: EdgeInsets.all(30),
                    //   child: Image(image: AssetImage('images/me.jpg')),
                    // ),
                  Text(''),
                  Text(''),
                  Text(''),
          
                  Text('My name is:',        style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic, backgroundColor: Colors.black12,),),
                  Text(names[0],style: TextStyle(fontSize: 25),), 
          
                  Text(''),
          
                  Text('My name on Slack is:',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic, backgroundColor: Colors.black12,),),
                  Text(names[1],style: TextStyle(fontSize: 25),),
          
                  Text(''),
          
                  Text('My GitHub handle is: ',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic, backgroundColor: Colors.black12,),),
                  Text(names[2],style: TextStyle(fontSize: 25),),
          
                  Text(''),
          
                  Text('A short bio:',         style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic, backgroundColor: Colors.black12,),),
                  Text(names[3],style: TextStyle(fontSize: 25),), 
                  
                  
                
                  
                   
                ],
              ),
            ),
          ),
          ElevatedButton(       
                  child: Text('Edit CV info'),
                  onPressed: () async {
                    final List<String> name_2 = await Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => SecondScreen(return_names:names)));
                  setState(() {
                    names = name_2;
                  });
                  //print(name_2);
                  },//on pressed
                ),

        ],
      )

    );
  }

}