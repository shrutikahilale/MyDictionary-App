import 'package:flutter/material.dart';

class MyDict extends StatefulWidget {
  @override
  State<MyDict> createState() => _MyDictState();
}

class _MyDictState extends State<MyDict> {
  Map data = {};
  String word = '', meaning = '', partOfSpeech = '';

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    word = data['word'];
    meaning = data['meaning'];
    partOfSpeech = data['partsOfSpeech'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Word Meaning',
          style: TextStyle(
            fontFamily: 'WorkSans-Regular',
          ),
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.0,
            ),
            Text(
              '$word :',
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'WorkSans-Regular',
                color: Colors.blueGrey[900],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Text(
                  'Part of speech : ',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'WorkSans-Regular',
                    color: Colors.blueGrey[900],
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  partOfSpeech,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'WorkSans-Regular',
                    color: Colors.blueGrey[900],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Meaning : ',
              style: TextStyle(
                fontSize: 22.0,
                fontFamily: 'WorkSans-Regular',
                color: Colors.blueGrey[900],
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              meaning,
              style: TextStyle(
                fontSize: 22.0,
                fontFamily: 'WorkSans-Regular',
                color: Colors.blueGrey[900],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
