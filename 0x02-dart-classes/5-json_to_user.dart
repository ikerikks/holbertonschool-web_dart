class User {
  Map map = {};
  String name = '';
  int age = 0;
  double height = 0;
  int id = 0;

  static var color = 'rose';

  User({name, age, height, id}){
    this.name = name;
    this.age = age;
    this.height = height;
    this.id = id;
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
    id: userJson['id'],
    name: userJson['name'],
    age: userJson['age'],
    height: userJson['height'],
  );
  }

  toJson()=> {'id': this.id, 'name': this.name, 'age': this.age, 'height': this.height};
  @override
  String toString() {
    return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height})';
  }
  
}

