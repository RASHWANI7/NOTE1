import 'package:flutter/material.dart';
import 'package:market_app/componant/grocery_item_tile.dart';
import 'package:market_app/model/cart_model.dart';
import 'package:provider/provider.dart';
import 'package:market_app/pages/cart_page.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Cart_Page();
          }));
        },
        backgroundColor: Colors.black,
        child: Icon(
          Icons.shopping_bag,
          color: Colors.white,
          size: 35,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30.0, left: 10, right: 10, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning..',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Order fresh items for you everyday',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Fresh Item',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Consumer<Cart_Model>(builder: (context, value, child) {
                return GridView.builder(
                    itemCount: value.shopItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.2,
                    ),
                    itemBuilder: (context, index) {
                      return GroceryItemTile(
                        item_name: value.shopItems[index][0],
                        item_price: value.shopItems[index][1],
                        item_image: value.shopItems[index][2],
                        Color: value.shopItems[index][3],
                        onPressed: () {
                          Provider.of<Cart_Model>(context, listen: false)
                              .addItemtoCart(index);
                        },
                      );
                    });
              }),
            ),
          ],
        ),
      ),
    ));
  }
}
