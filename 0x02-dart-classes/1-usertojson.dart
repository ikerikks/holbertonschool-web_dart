class User {
  String name = '';
  int age = 0;
  double height = 0;
  User({name, age, height}){
    this.name = name;
    this.age = age;
    this.height = height;
  }
  toJson()=> {'name': name, 'age': age, 'height': height};
}
