import 'package:flutter/material.dart';
import 'package:unihack/homepage.dart';
import 'variables.dart';


Column imageWidget(String image, String text, Color colour) {
  return Column(
    children: [
      Image.asset(
        image,
        cacheHeight: 64,
        cacheWidth: 64,
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: 10.0,
          color: colour,
        ),
      )
    ],
  );
}

class Mood extends StatefulWidget {
  const Mood({Key? key}) : super(key: key);

  @override
  _MoodState createState() => _MoodState();
}


class _MoodState extends State<Mood> {
  String _selectedText = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff3e7c9e),
            elevation: 0,
            title: const Center(
              child: Text('How\'s ur MOOOOOOOOOD'),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: imageWidget('images/feeling_loved.png',
                            'Lovin\'it', Colors.amber),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Lovin it';
                            globalVariable = 'images/feeling_loved.png';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child: imageWidget(
                            'images/feeling_nice.png', 'Nice', Colors.black26),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Feeling nice';
                            globalVariable = 'images/feeling_nice.png';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child: imageWidget(
                            'images/happy.png', 'Happy', Colors.deepOrangeAccent),
                        onTap: () {
                          setState(() {
                            _selectedText = 'I m Happy';
                            globalVariable = 'images/happy.png';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child: imageWidget(
                            'images/neutral.png', 'Nothing', Colors.blue),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Don\'t know';
                            globalVariable = 'images/neutral.png';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child:
                            imageWidget('images/party.png', 'Party', Colors.red),
                        onTap: () {
                          setState(() {
                            _selectedText = '!!!Party!!!';
                            globalVariable = 'images/party.png';
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: imageWidget(
                            'images/sad-face.png', 'Sad', Colors.amber),
                        onTap: () {
                          setState(() {
                            _selectedText = 'I m Sad';
                            globalVariable = 'images/sad-face.png';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child: imageWidget(
                            'images/sleepy.png', 'Sleepy', Colors.black26),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Feeling Sleepy';
                            globalVariable = 'images/sleepy.png';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child: imageWidget('images/smile.png', 'Smiling',
                            Colors.deepOrangeAccent),
                        onTap: () {
                          setState(() {
                            _selectedText = 'I m Smilin';
                            globalVariable = 'images/smile.png';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child:
                            imageWidget('images/star.png', 'Star', Colors.blue),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Feeling like a Star';
                            globalVariable = 'images/star.png';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child: imageWidget(
                            'images/very_sad.png', 'Very Sad', Colors.red),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Very Sad';
                            globalVariable = 'images/very_sad.png';
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        child:
                            imageWidget('images/wink.png', 'Wink', Colors.amber),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Winking';
                            globalVariable = 'images/wink.png';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child: imageWidget(
                            'images/affection.png', 'Affection', Colors.black26),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Feeling loved';
                            globalVariable = 'images/affection.png';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child: imageWidget(
                            'images/cool.png', 'COOL', Colors.deepOrangeAccent),
                        onTap: () {
                          setState(() {
                            _selectedText = 'I m Cool';
                            globalVariable = 'images/cool.png';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child:
                            imageWidget('images/crazy.png', 'Crazy', Colors.blue),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Gone Crazy';
                            globalVariable = 'images/crazy.png';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child: imageWidget(
                            'images/crying.png', 'crying', Colors.red),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Feel like Crying';
                            globalVariable = 'images/crying.png';
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        child:
                        imageWidget('images/devil.png', 'devil', Colors.amber),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Mischievous';
                            globalVariable = 'mischievous';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child: imageWidget(
                            'images/disgusted.png', 'Disgusted', Colors.black26),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Disgusted';
                            globalVariable = 'disgusted';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child: imageWidget(
                            'images/drunk.png', 'Drunk', Colors.deepOrangeAccent),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Drunk';
                            globalVariable = 'drunk';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child:
                        imageWidget('images/stupid.png', 'stupid', Colors.blue),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Stupid';
                            globalVariable = 'stupid';
                          });
                        },
                      ),
                      const SizedBox(
                        width: 11.0,
                      ),
                      GestureDetector(
                        child: imageWidget(
                            'images/face.png', 'Rich', Colors.red),
                        onTap: () {
                          setState(() {
                            _selectedText = 'Rich';
                            globalVariable = 'rich';
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                  ),

                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                    },



                  child: Text(
                    _selectedText,
                    style: const TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
