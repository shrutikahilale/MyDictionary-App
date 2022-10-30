import 'package:http/http.dart' as http;
import 'dart:convert';

class FetchWord {
  String word;
  var meaning;
  var partOfSpeech;
  FetchWord({required this.word});

  Future<void> getMeaning() async {
    try {
      var response = await http.get(
          Uri.parse('https://api.dictionaryapi.dev/api/v2/entries/en/$word'));
      var data = json.decode(response.body);
      print(data);

      // * data[0]['meanings'][0];
      // * this is a var of type dictionary
      partOfSpeech = data[0]['meanings'][0]['partOfSpeech'];
      meaning = data[0]['meanings'][0]['definitions'][0]['definition'];
    } catch (e) {
      word = word == '' ? 'no word received' : word;
      meaning = 'not found';
      partOfSpeech = 'not found';
      print('hello');
    }
  }
}
