import 'package:flutter/material.dart';
import 'package:morse_code_converter/pages/home.dart';

class HelpIconClickedButton extends StatelessWidget {
  const HelpIconClickedButton({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff89f7fe),
        title: const Text('International Morse Code Guide'),
        titleTextStyle:
            const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHome()),
              );
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: Container(
          height: h,
          width: w,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 5.0)
            ],
            image: const DecorationImage(
              image: NetworkImage(
                  'https://www.shutterstock.com/image-vector/icon-international-morse-code-table-600nw-1073233640.jpg'),
              fit: BoxFit.cover,
            ),
            color: const Color(0xff89f7fe),
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}
