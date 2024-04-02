import './0-util.dart';

Future<void> usersCount() => fetchUsersCount()
  .then((value) { print(value); });
