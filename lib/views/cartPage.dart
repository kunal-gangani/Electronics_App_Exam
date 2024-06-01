import 'package:exam/globals/gloabal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    double qty = 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text("User's Cart"),
      ),
      body: (cartList.isEmpty) ? const Center(
        child: Text("Add some items to Cart first"),
      )
      : Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ...cartList.map((e) => Container(
              height: 150,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 4,
                        color: Colors.grey
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(flex: 2,child: Image.network(e['images2'])),
                    Expanded(flex: 4,child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e['name']),
                            GestureDetector(
                              onTap: (){
                                cartList.remove(e);
                              },
                                child: Icon(Icons.remove_circle))
                          ],
                        ),
                        Text(e['category']),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e['price'].toString()),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 30,
                                  alignment: Alignment.center,
                                  color: Colors.grey,
                                  child: GestureDetector(
                                    onTap: (){
                                      qty--;
                                      setState(() {});
                                    },
                                      child: Icon(Icons.remove)),
                                ),
                                Container(
                                  height: 40,
                                  width: 30,
                                  alignment: Alignment.center,
                                  child: Text("1"),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    qty++;
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 30,
                                    color: Colors.grey,
                                    child: const Icon(Icons.add),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ))
          ],
        ),
      )
    );
  }
}
