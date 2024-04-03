import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> printRmCharacters() async {
  try {
    var url = Uri.parse('https://rickandmortyapi.com/api/character');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var characters = data['results'];
  
      characters.forEach((character) {
        print(character['name']);
      });
    }
  } catch(e) {
    return 'error caught: $e';
  }
}
