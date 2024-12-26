import 'dart:math';

import 'package:flutter/material.dart';

class CustomImage extends StatefulWidget {
  const CustomImage({super.key});

  @override
  State<CustomImage> createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
  int number_of_image1 = 1;
  int number_of_image2 = 2;

  void random_number() {
    number_of_image1 = Random().nextInt(8) + 1;
    number_of_image2 = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            number_of_image1 == number_of_image2
                ? 'مبروك لقد نجحت '
                : 'حاول مرة اخرى',
            style: TextStyle(
              fontSize: 42,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        random_number();
                      });
                    },
                    child: Image.asset('assets/image-$number_of_image1.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        random_number();
                      });
                    },
                    child: Image.asset('assets/image-$number_of_image2.png'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
