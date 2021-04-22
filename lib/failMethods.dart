import 'package:sentry_flutter/sentry_flutter.dart';

class Methods {
  Future<void> myFunction() async {
    try {
      int result = 12 ~/ 0;
      print("The result is $result");
    } catch (exception, stackTrace) {
      /* print(exception); */
      await Sentry.captureException(
        exception,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> myFunction2() async {
    try {
      final List myList = [];
      print(myList[1]);
    } catch (exception, stackTrace) {
      /* print("$exception  my exceptionn"); */
      await Sentry.captureException(
        exception,
        stackTrace: stackTrace,
      );
    }
  }
}