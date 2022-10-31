import 'package:flutter/material.dart';
import 'package:ui_text_animation/main.dart';

import 'home_page.dart';
import 'my_home_page.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routes'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                child: const Text(
                  'My Home_example',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text(
                  'Home_getX',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
