import 'package:flutter/material.dart';
import 'package:morse_code_converter/utils/morsecode/widgets/bottomnav.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: const Color.fromARGB(255, 21, 118, 243)),
      home: const BottomNav(),
    );
  }
}
