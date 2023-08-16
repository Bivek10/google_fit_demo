import 'package:flutter/material.dart';
import 'package:google_fit_demo/src/screen/pages/home/home_page.dart';

void main(List<String> args) {
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true),
      home: const HomePage(),
    );
  }
}
