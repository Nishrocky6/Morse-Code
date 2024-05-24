import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:morse_code_converter/utils/morsecode/widgets/help.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Morse Code'),
        titleTextStyle:
            const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        //put color
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HelpIconClickedButton()),
              );
            },
            icon: const Icon(Icons.help_outline_rounded),
            color: Colors.black,
          )
        ],
        backgroundColor: const Color(0xff89f7fe),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff89f7fe), Color(0xfffdfcfb)]),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Image.asset('Home.jpg'),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 200,
              // color: Colors.black,
              child: const Text(
                  "In 1838, Samuel Morse and his assistant, Alfred Vail, demonstrated an even more successful telegraph device which sent messages using a special code - Morse code. You will be surprised to learn that the International Morse Code is not a written language but a sound-based one Each letter of the code is represented by a combination of short and long sounds known as dots and dashes. An eighth note is played for each dot or a short sound."),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(
                        'Morse Code',
                        textStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )
                    ],
                    totalRepeatCount: 50,
                  )
                ])
          ],
        ),
      ),
    );
  }
}
