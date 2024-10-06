import 'package:flutter/material.dart';
import 'package:market_app/model/cart_model.dart';
import 'package:market_app/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart_Model(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Intro_Page(),
      ),
    );
  }
}
