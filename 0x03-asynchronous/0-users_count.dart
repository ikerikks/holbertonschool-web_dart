import './util.dart';

Future<void> usersCount(){
  // var result = fetchUsersCount();
  // return Future.delayed(Duration(seconds: 0), () {
  //  print(result);
  // });
 
  return fetchUsersCount()
    .then((value) { print(value); });
  // return (fetchUsersCount()
  // .then((value) { print(value); })
  // .catchError((e) {
  //   throw e;
  // })
  // );
}
