import 'package:my_cli_app/my_cli_app.dart';

void main(List<String> arguments) {
  for (var name in arguments) {
    String capitalizedName = name[0].toUpperCase() + name.substring(1);
    var lucky = Lucky();
    print('Hello $capitalizedName. Your lucky number is ${lucky.randomNumber}');
  }
}
