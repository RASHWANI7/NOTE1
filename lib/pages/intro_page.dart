import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class Intro_Page extends StatelessWidget {
  const Intro_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 90.0, right: 70, left: 70, bottom: 15),
            child: Image.asset(
              "lib/images/avocado.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'We deliver groceries at your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          Text(
            'fresh item everyday',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          SizedBox(
            height: 80,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home_Page()));
            },
            child: Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.deepPurple[900],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
