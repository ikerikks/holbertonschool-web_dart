import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  var result = await fetchUserData();
  Map map = jsonDecode(result);

  return Future.delayed(Duration(), () => map['id']);
}
