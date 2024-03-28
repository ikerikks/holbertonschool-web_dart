class User {
  Map map = {};
  String name = '';
  int age = 0;
  double height = 0;

  User({name, age, height, id}){
    this.name = name;
    this.age = age;
    this.height = height;
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
    id: userJson['id'],
    name: userJson['name'],
    age: userJson['age'],
    height: userJson['height'],
  );
  }

  toJson()=> {'name': name, 'age': age, 'height': height};
}

