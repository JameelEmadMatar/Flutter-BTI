import 'package:flutter/material.dart';
import 'package:sakha_home/Urgent/data.dart';

class CategoriesWidget extends StatefulWidget{
  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  int activeCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: categoriesData().length,
        itemBuilder: (context, index) {
          return Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: activeCategory == index ? Colors.green : Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: 
              InkWell(
                onTap:() => {
                  activeCategory = index,
                  setState((){})
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(categoriesData()[index].icon!),
                    Text(
                      categoriesData()[index].nameEn!,
                      textAlign: TextAlign.center,
                    ),
                  ]
                ),
              )
            );
        },
      ),
    );
  }
}