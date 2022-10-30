import 'package:flutter/material.dart';
import 'package:mydictionary/fetch_data.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Dictionary extends StatefulWidget {
  @override
  State<Dictionary> createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {
  void setUpMeaning() async {
    word = ModalRoute.of(context)?.settings.arguments as Map;

    FetchWord fetchWord = FetchWord(word: word['word']);
    await fetchWord.getMeaning();
    print('yes');

    // ignore: use_build_context_synchronously
    Navigator.popAndPushNamed(context, '/dictionary_layout', arguments: {
      'word': fetchWord.word,
      'meaning': fetchWord.meaning,
      'partsOfSpeech': fetchWord.partOfSpeech,
    });
  }

  Map word = {};
  @override
  Widget build(BuildContext context) {
    setUpMeaning();
    

    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[900],
      ),
      child: const Center(
        child: SpinKitFadingCircle(
          color: Colors.white,
          size: 70.0,
        ),
      ),
    );
  }
}
