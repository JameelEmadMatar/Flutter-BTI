import 'package:flutter/material.dart';
import 'package:my_app/categoryMap.dart';
import 'package:my_app/data.dart';

class AllCategory extends StatefulWidget{
  @override
  State<AllCategory> createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
  List<Category> ConvertMapToCategory(){
    return data.map((e) => Category(e)).toList();
  }
  int categorySellected = 0;
  List productsSellected = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text("الرئيسية"),
      backgroundColor: const Color(0xFF860000),
      centerTitle: true,
      titleTextStyle: const TextStyle(
        fontSize: 25,
      ),
    ),
    body: Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/im.jpeg'),
                fit: BoxFit.cover,
              )
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            child: const Text(
              "التصنيفات",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          // Category List
          Container(
            width: double.infinity,
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: ConvertMapToCategory().length,
              itemBuilder: (context, index) {
                return 
                InkWell(
                  onTap: () => {
                    setState((){
                      categorySellected = index;
                    })
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.symmetric(vertical: 5 , horizontal: 10),
                    height: 50,
                    decoration: BoxDecoration(
                      color:  categorySellected == index ? Colors.blue :const Color(0xFF860000),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(child: Text(ConvertMapToCategory()[index].name!,style: const TextStyle(color: Colors.white),))
                  ),
                );
              },
            ),
          ),
          Container(
            color: Colors.white,
            width: 200,
            height: 200,
            child: Column(
              children: [
                Image.asset("assets/im.jpeg"),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("مشط شعر"),
                      Text("10.05 د.ا",style: TextStyle(color: Color(0xFF860000))),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(5),
                  child: const Text("وصف المنتج")
                ),
                Container(
                  color: const Color(0xFF860000),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("أضف للسلة",style: TextStyle(fontSize: 20,color: Colors.white),),
                      SizedBox(width: 10,),
                      Icon(Icons.shopping_basket,color: Colors.white,size: 30,),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),

    );
  }
}