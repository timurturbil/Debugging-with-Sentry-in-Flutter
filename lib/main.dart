import 'package:flutter/material.dart';
import 'package:sentry_app/HomePage.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  await SentryFlutter.init((options) {
    options.dsn =
        'https://fb43a0383b7b4da2b82c86f87d000b91@o577277.ingest.sentry.io/5731982';
  }, appRunner: () => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
