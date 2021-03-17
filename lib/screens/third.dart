import 'package:base_app/service/navigation_service.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  ThirdScreen({Key key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThirdScreen"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            Text("SCREEN THREE"),
            ElevatedButton(
              onPressed: () {
                NavigationService().goBack();
              },
              child: Text("Go Back TO TWO"),
            ),
            ElevatedButton(
              onPressed: () {
                NavigationService().popToFirst();
              },
              child: Text("GO BACK TO HOME"),
            ),
          ],
        ),
      ),
    );
  }
}
