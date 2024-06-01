import 'package:exam/globals/gloabal.dart';
import 'package:exam/globals/routes.dart';
import 'package:exam/utils/homePageUtils/itemContainer.dart';
import 'package:exam/utils/homePageUtils/subCategory.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.of(context).textScaler;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Text("Welcome,",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),),
              const Text("Gadget Enthusiast",style: TextStyle(
                fontSize: 20,
                color: Colors.grey
              ),),
              const SizedBox(height: 10,),
              const Text("New Arrivals",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: subCategory()),
              const SizedBox(height: 30,),
              ...products.map((e) => itemContainer(e: e, context: context))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: 100,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 0.5,),
            const Icon(Icons.home,size: 40,),
            const Icon(Icons.search_rounded,size: 40,),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, Routes.cart_page);
              },
                child: const Icon(Icons.shopping_cart,size: 40,)),
            const Icon(Icons.person,size: 40,),
            const SizedBox(width: 0.5,)
          ],
        ),
      ),
    );
  }
}
