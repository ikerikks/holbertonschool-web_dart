import './util.dart';

Future<void> usersCount() async {
  return (fetchUsersCount()
  .then((value) { print(value); })
  .catchError((e) {
    throw e;
  })
  );
}
