import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Aniamted Text",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.orangeAccent,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Andrew Tate",
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                      speed: const Duration(milliseconds: 200),
                    )
                  ],
                  totalRepeatCount: 10,
                  pause: const Duration(milliseconds: 200),
                  stopPauseOnTap: true,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText(
                      "Top G",
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                  totalRepeatCount: 10,
                  pause: const Duration(milliseconds: 200),
                  stopPauseOnTap: true,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      "Elon Musk",
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                  totalRepeatCount: 10,
                  pause: const Duration(milliseconds: 200),
                  stopPauseOnTap: true,
                ),
                TextLiquidFill(
                    waveColor: Colors.blueAccent,
                    boxBackgroundColor: Colors.redAccent,
                    text: 'Lebron James')
              ],
            )));
  }
}
