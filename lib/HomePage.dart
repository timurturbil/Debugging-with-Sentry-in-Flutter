import 'package:flutter/material.dart';
import 'package:sentry_app/failMethods.dart';

class HomePage extends StatelessWidget{
  final methods = Methods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                methods.myFunction();
              },
              child: Text("Error 1"),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green)),
            ),
            TextButton(
                onPressed: () {
                  methods.myFunction2();
                },
                child: Text("Error 2"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green))),
          ],
        ),
      ),
    );
  }
}
