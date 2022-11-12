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
        appBar: AppBar(
          title: const Text('MyDictionary'),
          leading: const Image(
            image: AssetImage('assets/dictionary_icon.png'),
            height: 10.0,
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey[800],
        body: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 50.0, horizontal: 16.0),
            child: ListView(
              children: [
                const SizedBox(height: 150.0),
                TextField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'WorkSans-Regular',
                  ),
                  controller: textEditingController,
                  decoration: InputDecoration(
                      hintText: homeText,
                      hintStyle: const TextStyle(
                        fontSize: 18.0,
                        color: Color.fromARGB(64, 255, 255, 255),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          textEditingController.clear();
                        },
                        icon: const Icon(Icons.close),
                        color: Colors.white,
                      )),
                ),
                const SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: () {
                    word = textEditingController.text;
                    Navigator.pushNamed(context, '/dictionary',
                        arguments: {'word': word});
                    textEditingController.clear();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.blueGrey[100],
                    ),
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                    ),
                  ),
                  child: Text(
                    'Get Meaning',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'WorkSans-Regular',
                      color: Colors.blueGrey[900],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
