import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:unihack/variables.dart';

import './mood_settings.dart';
import './analytics.dart';
import './settings.dart';
import './chips.dart';

int _navIndex = 0;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

String date = DateFormat.MMMd().format(DateTime.now());

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(date),
        backgroundColor: const Color(0xff3e7c9e),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFF5BA7CF),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      "How \nare \nyou \nfeeling?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),

                  TextButton(
                    style: TextButton.styleFrom(
                      primary: const Color(0xFF5BA7CF),
                      elevation: 0,
                    ),
                    onPressed: (){

                        Navigator.pushNamed(context,'/moods' );

                    }, //mood
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[SizedBox(
                        height: MediaQuery.of(context).size.height/4,

                        child:Image.asset('images/crazy.png', width: 200,height: 100,
                        ),
                      ),
                        const Text('Tap me to choose ur mood',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )


              ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                    "What made you feel that way?",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              child: Wrap(
                spacing: 5,
                runSpacing: 3,
                children: chips,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 60,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Mood Saved!"),
                    duration: Duration(seconds: 4),
                  ),
                );
              });
            },
            child: Icon(
              Icons.add,
              size: 40,
            ),
            splashColor: Color(0xFF5B9DC0),
            backgroundColor: Color(0xFF3E7C9E),
          ),
        ),
      ),
    );
  }
}

