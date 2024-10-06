import 'dart:ui';

import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String item_name;
  final String item_price;
  final String item_image;
  final Color;
  final void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.item_name,
    required this.item_price,
    required this.item_image,
    required this.Color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color[700],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              item_image,
              height: 75,
            ),
            Text(
              item_name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            MaterialButton(
              onPressed: onPressed,
              color: Color,
              child: Text(
                '\$ ' + item_price,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
