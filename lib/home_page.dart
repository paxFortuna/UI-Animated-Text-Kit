import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showAnim = false;
  double top1 = 200;
  double top2 = 400;
  double left = 500;
  bool type = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 10000), () {
      setState(() {
        showAnim = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.redAccent,
              ),
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
                child: Center(
                  child: AnimatedTextKit(
                    //repeatForever: false,
                    //totalRepeatCount: 1,
                    animatedTexts: [
                      RotateAnimatedText(
                        "Dastagir",
                        rotateOut: false,
                      ),
                    ],
                  ), //A
                ),
              ), //boxdecoration
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: top1,
            left: 0,
            child: SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              // child: DefaultTextstyle(
              //   style: const TextStyle(
              //     fontSize: 30,
              //     fontFamily: 'popin',
              //     color: Colors.blue,
              //   ), //textStyle
                child: AnimatedTextKit(
                  repeatForever: false,
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(
                      "When you talk, you are only repeating",
                      speed: const Duration(milliseconds: 100),
                    ),
                    TyperAnimatedText(
                      "Something you know. But if you listen",
                      speed: const Duration(milliseconds: 100),
                    ),
                    TyperAnimatedText(
                      "You may learn something new",
                      speed: const Duration(milliseconds: 100),
                    ),
                    TyperAnimatedText(
                      "_Dalai Lama",
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
