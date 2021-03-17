import 'package:base_app/screens/second.dart';
import 'package:base_app/service/navigation_service.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SCREEN ONE"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            Text("SCREEN ONE"),
            ElevatedButton(
              onPressed: () {
                NavigationService().navigateToScreen(SecondScreen());
              },
              child: Text("Go To SCREEN Two"),
            ),
          ],
        ),
      ),
    );
  }
}
