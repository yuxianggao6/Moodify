import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Analytics extends StatefulWidget {
  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'Kindacode.com',
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        // Theme mode depends on device settings at the beginning
        home: Analytics_page());
  }
}

// Home Screen
class Analytics_page extends StatefulWidget {
  @override
  State<Analytics_page> createState() => _Analytics_pageState();
}

class _Analytics_pageState extends State<Analytics_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Kindacode.com'),
      actions: [
        IconButton(
            icon: Icon(Icons.lightbulb),
            onPressed: () {
              Get.isDarkMode
                  ? Get.changeTheme(ThemeData.light())
                  : Get.changeTheme(ThemeData.dark());
            })
      ],
    )
        /*body: Center(
        child: ElevatedButton(
          child: Text('Go to Other Screen'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OtherScreen()));
          },
        ),
      );*/
        );
  }
}
