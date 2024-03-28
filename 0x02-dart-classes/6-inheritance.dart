import '6-password.dart';

class User extends Password{
  String name = '';
  int age = 0;
  double height = 0;
  int id = 0;
  String user_password = '';

  User({name, age, height, id, user_password}){
    this.name = name;
    this.age = age;
    this.height = height;
    this.id = id;
    this.user_password= user_password;
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
    id: userJson['id'],
    name: userJson['name'],
    age: userJson['age'],
    height: userJson['height'],
    user_password: userJson['user_password']
    );
  }

  toJson()=> {'id': this.id, 'name': this.name, 'age': this.age, 'height': this.height};
  @override
  String toString() {
    super.password = user_password;
    return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height}, Password: ${super.isValid()})';
  }

}