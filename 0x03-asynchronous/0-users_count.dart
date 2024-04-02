import './util.dart';

Future<void> usersCount() async {
  var result = await fetchUsersCount();
  print(result);
  // return (fetchUsersCount()
  // .then((value) { print(value); })
  // .catchError((e) {
  //   throw e;
  // })
  // );
}
