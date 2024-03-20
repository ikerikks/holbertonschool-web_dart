void outer(String name, String id) {
  var fullName = name.split(' ');
  var firstName = fullName.first;
  var initial = fullName.last[0];

  String inner() {
    return "Hello Agent $initial.$firstName your id is $id";
  }

  print(inner());
}
