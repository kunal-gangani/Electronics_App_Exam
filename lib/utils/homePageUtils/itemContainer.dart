import 'package:exam/globals/routes.dart';
import 'package:exam/views/detailPage.dart';
import 'package:flutter/material.dart';

Widget itemContainer({required Map e,required BuildContext context}){
  return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, Routes.detail_page,arguments: e);
    },
    child: Container
      (
      height: 300,
      width: 200,
      child: Column(
        children: [
          Expanded(flex: 4,child: Image.network(e['images2'])),
            Expanded(flex: 2,child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(e['name'],style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
              Text(e['category'],style: const TextStyle(
                color: Colors.grey
              ),),
              Text(e['price'].toString(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),)
            ],
          ))
          ,
        ]
        ,
      )
      ,
    ),
  );
}