import './util.dart';

Future<void> usersCount() {
  return (fetchUsersCount()
  .then((value) { print(value); }));
  // .catchError((e) )
}
