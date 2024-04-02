import '2-util.dart';

Future<void> getUser() async {
  try {
   var result = await fetchUser();
  }
  catch(e) {
      print('error caught: $e');
  }
}