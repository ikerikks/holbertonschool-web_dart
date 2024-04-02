import './util.dart';

Future<void> usersCount() async {
  var result = await fetchUsersCount();
  return Future<void>.delayed(Duration(seconds: 0), () {
   print(result);
  });
  // return (fetchUsersCount()
  // .then((value) { print(value); })
  // .catchError((e) {
  //   throw e;
  // })
  // );
}
