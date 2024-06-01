import 'package:flutter/material.dart';

Widget subCategoryContainer({required String name}){
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(7)
      ),
      child: Text(name,style: const TextStyle(
        color: Colors.white
      ),),
    ),
  );
}

Widget subCategory(){
  return Row(
    children: [
      subCategoryContainer(name: "All"),
      subCategoryContainer(name: "Smartphones"),
      subCategoryContainer(name: "Laptops"),
      subCategoryContainer(name: "Headphones"),
      subCategoryContainer(name: "Smart Home"),
      subCategoryContainer(name: "Cameras"),
    ],
  );
}