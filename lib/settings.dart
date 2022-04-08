import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//reference: https://www.youtube.com/watch?v=FnXg0NK6hb8

class Settings extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SettingPageUI(),
    );
  }
}

class SettingPageUI extends StatefulWidget {
  @override
  _SettingPageUIState createState() => _SettingPageUIState();
}

class _SettingPageUIState extends State<SettingPageUI> {
  bool valDark = true;
  bool valRemind = true;
  bool valRecc = true;
  bool valCommu = true;

  onChangeDark(bool newDark){

    setState((){
      valDark = newDark;
    });
  }

  onChangeRemind(bool newRemind){
    setState((){
      valRemind = newRemind;
    });
  }

  onChangeRecc(bool newRecc){
    setState((){
      valRecc = newRecc;
    });
  }

  onChangeCommu(bool newCommu){
    setState((){
      valCommu = newCommu;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(

        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height:40),
              Row(
                children:[
                  Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Social Settings", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ],
              ),
              Divider(height: 20, thickness: 1),
              SizedBox(height: 10),
              buildAccountOption(context, "Change Password", "Update Password","Forgot Your Password?"),
              buildAccountOption(context, "Set Location", "Change Country", "Change Suburb"),
              buildAccountOption(context, "Language", "English", "French"),
              buildAccountOption(context, "Link Social Media", "Link Facebook", "Link Instagram"),
              buildAccountOption(context, "Privacy and Security", "Read Terms and Conditions", "Update Security Questions"),

              SizedBox(height: 40),
              Row(
                children: [
                  Icon(Icons.build_sharp, color: Colors.blue),
                  SizedBox(width: 10),
                  Text("Displays & Notifications", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ],
              ),
              Divider(height: 20, thickness: 1),
              SizedBox(height: 10),
              // buildNotificationOption("Dark Mode", valDark, onChangeDark),
              buildNotificationOption("Daily Reminders", valRemind, onChangeRemind,Icons.notifications),
              buildNotificationOption("Recommendations", valRecc, onChangeRecc, Icons.emoji_objects),
              buildNotificationOption("Community Features", valCommu, onChangeCommu, Icons.electric_bike),


            ],
          ),
        )
    );
  }


  Padding buildNotificationOption(String title, bool value, Function onChangeMethod, IconData IconDisplay){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(IconDisplay, color: Colors.greenAccent),
          Text(title,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]
          )),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.blue,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue){
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title, String Option1, String Option2){
    return GestureDetector(
      onTap: (){
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children:[
                Text(Option1,style: TextStyle(fontSize: 18)),
                Text(Option2,style: TextStyle(fontSize: 18)),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text("Close")
              )
            ],
          );
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]
            )),
            Icon(Icons.arrow_forward_ios, color: Colors.grey)
          ],
        ),
      ),
    );
  }
}