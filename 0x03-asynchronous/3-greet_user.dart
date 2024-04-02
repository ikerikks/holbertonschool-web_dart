import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async{
  try {
    var data = await fetchUserData();
    // var credentials = await checkCredentials();
    return 'Hello ${jsonDecode(data)['username']}';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    bool logged = await checkCredentials();
    return logged ? 'There is a user: true': 'There is a user: false';
  } catch (e) {
    return 'error caught: $e';
  }
}
