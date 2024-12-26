import 'package:flutter/material.dart';
import 'package:tadabog/custom_widget/custom_image.dart';

void main() {
  runApp(const Tadabog());
}

class Tadabog extends StatelessWidget {
  const Tadabog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text(
            'تطابق صورة',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.indigo[800],
        ),
        body: const CustomImage(),
      ),
    );
  }
}
