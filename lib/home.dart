import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String homeText = 'Please enter a word get meaning';
  var textEditingController = TextEditingController();

  String word = 'no input received';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 16.0),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/dictionary_icon.png'),
                      height: 90.0,
                    ),
                    // SizedBox(width: 2.0),
                    Text(
                      'MyDictionary',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'WorkSans-Regular',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 150.0),
                TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'WorkSans-Regular',
                  ),
                  controller: textEditingController,
                  decoration: InputDecoration(
                      hintText: homeText,
                      hintStyle: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          textEditingController.clear();
                        },
                        icon: Icon(Icons.close),
                        color: Colors.white,
                      )),
                ),
                SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: () {
                    word = textEditingController.text;
                    Navigator.pushNamed(context, '/dictionary', arguments: {
                      'word': word,
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.blueGrey[800],
                    ),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                    ),
                  ),
                  child: Text(
                    'Get Meaning',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'WorkSans-Regular',
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
