import 'dart:math';
import 'dart:io';

class Lucky {
  int randomNumber;

  Lucky({this.randomNumber = 0}) {
    var minEnvironment = Platform.environment['MIN'];
    var maxEnvironment = Platform.environment['MAX'];
    int integerMin = 0;
    int integerMax = 0;

    if (minEnvironment != null && maxEnvironment != null) {
      try {
        integerMin = int.parse(minEnvironment);
        integerMax = int.parse(maxEnvironment);
        randomNumber = Random().nextInt(integerMax - integerMin) + integerMin;
      } catch (e) {
        print('Error: $e');
      }
    } else {
      print('MIN and/or MAX environment variables are not defined.');
    }
  }
}
