import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async{
  try {
    var data = await fetchUserData();
    return 'Hello ${jsonDecode(data)['username']}';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    bool logged = await checkCredentials();
    if (logged) {
      print('There is a user: true');
      return greetUser();
    }
    print('There is a user: false');
    return greetUser();
  } catch (e) {
    return 'error caught: $e';
  }
}
