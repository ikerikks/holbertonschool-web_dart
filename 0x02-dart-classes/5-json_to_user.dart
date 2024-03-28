class User {
  Map map = {};

  User({name, age, height, id}){
    this.map.addAll({
    'id': id,
    'name': name,
    'age': age,
    'height': height
    });
  }

  User.fromJson(map) {
    this.map.addAll(map);
  }

  toJson()=> map;
  @override
  String toString()=> 'User(id : ${map['id']}, name: ${map['name']}, age: ${map['age']}, height: ${map['height']})';
}
