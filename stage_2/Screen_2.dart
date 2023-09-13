import 'package:flutter/material.dart';


class SecondScreen extends StatefulWidget{

  late List<String> return_names;
  SecondScreen({super.key,required this.return_names});
  @override
  State<StatefulWidget> createState() => _secondScreenState( return_names);

}

class _secondScreenState extends State<SecondScreen>{
  late List<String> return_names;
  _secondScreenState(this.return_names);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children :[
                Text('Press Enter after each edit',style: TextStyle(fontSize: 25),),
                Text(' ',style: TextStyle(fontSize: 25),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField( // 1111111111111111111111111111111111111
                    decoration: InputDecoration(
                      labelText: 'Full name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                      )
                    ),
                    onSubmitted: (newValue) {
                      setState(() {
                        return_names[0] = newValue;
                      });  
                    },

                    autofocus: true,
                    controller: TextEditingController(text: return_names[0]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField( // 1111111111111111111111111111111111111
                    decoration: InputDecoration(
                      labelText: 'Name on Slack',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                      )
                    ),
                    onSubmitted: (newValue) {
                      setState(() {
                        return_names[1] = newValue;
                      });  
                    },
                    controller: TextEditingController(text: return_names[1]),
                              ),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField( // 1111111111111111111111111111111111111
                    decoration: InputDecoration(
                      labelText: 'GitHub handel',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                      )
                    ),
                    onSubmitted: (newValue) {
                      setState(() {
                        return_names[2] = newValue;
                      });  
                    },
                    controller: TextEditingController(text: return_names[2]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField( // 1111111111111111111111111111111111111
                    decoration: InputDecoration(
                      labelText: 'A brief personal bio',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                      )
                    ),
                    onSubmitted: (newValue) {
                      setState(() {
                        return_names[3] = newValue;
                      });  
                    },
                    controller: TextEditingController(text: return_names[3]),
                ),
              ),
                ElevatedButton(       //child 4
                  child: Text('Go back'),
                    onPressed: () {
                      Navigator.pop(context,return_names );
                        },
                  ),
              ],
            ),
          ),
    );
  }

}