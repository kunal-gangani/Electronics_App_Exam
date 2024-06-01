import 'dart:developer';

import 'package:exam/globals/gloabal.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override

  Widget build(BuildContext context) {
    Map<String,dynamic> prod = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text(prod['name']),
      ),
      body: Column(
        children: [
          Expanded(flex: 3,child: Image(image: NetworkImage(prod['images2'])),),
          Expanded(flex: 4,child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(prod['name'],style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                    Text("Available in Stock",style: TextStyle(
                      fontWeight: FontWeight.w700
                    ),)
                  ],
                ),
                const SizedBox(height: 20,),
                const Text("Description",style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400
                ),),
                const SizedBox(height: 20,),
                Text(prod['description'],style: TextStyle(
                  color: Colors.grey.shade700
                ),),
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Item Price : ",style: TextStyle(
                          color: Colors.grey
                        ),),
                        Text(prod['price'].toString(),style: const TextStyle(
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    InkWell(
                      splashColor: Colors.white,
                      onTap: (){
                          cartList.add(prod);
                      },
                      child: Container(
                        height: 75,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.center,
                        child: const Text("Add to Cart",style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),)
                      ),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
