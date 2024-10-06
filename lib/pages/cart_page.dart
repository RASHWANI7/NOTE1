import 'package:flutter/material.dart';
import 'package:market_app/model/cart_model.dart';
import 'package:provider/provider.dart';

class Cart_Page extends StatelessWidget {
  const Cart_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
        ),
        body: Consumer<Cart_Model>(
          builder: (context, value, index) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: value.cartItem.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: value.cartItem[index][3],
                              borderRadius: BorderRadius.circular(20)),
                          child: ListTile(
                            leading: Image.asset(
                              value.cartItem[index][2],
                              height: 50,
                            ),
                            title: Text(
                              value.cartItem[index][0],
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              '\$ ' + value.cartItem[index][1],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  Provider.of<Cart_Model>((context),
                                          listen: false)
                                      .removeItemfromCart(index);
                                },
                                icon: (Icon(
                                  Icons.cancel,
                                  size: 25,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 12.0, left: 10, right: 10, bottom: 10),
                  child: Container(
                    height: 105,
                    width: 340,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 12.0, left: 20, right: 20),
                      child: (Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Total Price ',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                value.calculateTotalPrice(),
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            height: 50,
                            width: 110,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                'Pay Now >',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      )),
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }
}
