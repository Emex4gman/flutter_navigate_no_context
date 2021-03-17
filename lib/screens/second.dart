import 'package:base_app/screens/third.dart';
import 'package:base_app/service/navigation_service.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScreen"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            Text("SCREEN TWO"),
            ElevatedButton(
              onPressed: () {
                NavigationService().goBack();
              },
              child: Text("Go Back"),
            ),
            ElevatedButton(
              onPressed: () {
                NavigationService().navigateToScreen(ThirdScreen());
              },
              child: Text("Go To THREE"),
            ),
          ],
        ),
      ),
    );
  }
}
