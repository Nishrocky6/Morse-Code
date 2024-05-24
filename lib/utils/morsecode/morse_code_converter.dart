import 'package:flutter/material.dart';

void main() => runApp(MorseCodeApp());

class MorseCodeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MorseCodeHomePage(),
    );
  }
}

class MorseCodeHomePage extends StatefulWidget {
  @override
  _MorseCodeHomePageState createState() => _MorseCodeHomePageState();
}

class _MorseCodeHomePageState extends State<MorseCodeHomePage> {
  final Map<String, String> _morseCodeMap = {
    '.-': 'A',
    '-...': 'B',
    '-.-.': 'C',
    '-..': 'D',
    '.': 'E',
    '..-.': 'F',
    '--.': 'G',
    '....': 'H',
    '..': 'I',
    '.---': 'J',
    '-.-': 'K',
    '.-..': 'L',
    '--': 'M',
    '-.': 'N',
    '---': 'O',
    '.--.': 'P',
    '--.-': 'Q',
    '.-.': 'R',
    '...': 'S',
    '-': 'T',
    '..-': 'U',
    '...-': 'V',
    '.--': 'W',
    '-..-': 'X',
    '-.--': 'Y',
    '--..': 'Z',
    '-----': '0',
    '.----': '1',
    '..---': '2',
    '...--': '3',
    '....-': '4',
    '.....': '5',
    '-....': '6',
    '--...': '7',
    '---..': '8',
    '----.': '9'
  };

  String _currentMorseCode = "";
  String _decodedMessage = "";

  void _addMorseCode(String code) {
    setState(() {
      if (code == " ") {
        if (_currentMorseCode.isNotEmpty) {
          _decodedMessage += _morseCodeMap[_currentMorseCode] ?? '';
          _currentMorseCode = "";
        }
        _decodedMessage += ' ';
      } else if (code == "   ") {
        if (_currentMorseCode.isNotEmpty) {
          _decodedMessage += _morseCodeMap[_currentMorseCode] ?? '';
          _currentMorseCode = "";
        }
        _decodedMessage += '   ';
      } else {
        _currentMorseCode += code;
      }
    });
  }

  void _clearMessage() {
    setState(() {
      _currentMorseCode = "";
      _decodedMessage = "";
    });
  }

  Widget _buildButton(String label, String value) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _addMorseCode(value),
        child: Text(label),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
          textStyle: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Morse Code Converter'),
        titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        backgroundColor: Color(0xff89f7fe),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff89f7fe), Color(0xfffdfcfb)]),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _decodedMessage,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                _buildButton('.', '.'),
                SizedBox(width: 25),
                _buildButton('-', '-'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                _buildButton('Space (between letters)', ' '),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                _buildButton('Space (between words)', '   '),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _clearMessage,
              child: Text('Clear'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
