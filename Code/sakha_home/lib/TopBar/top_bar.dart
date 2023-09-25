import 'package:flutter/material.dart';

class TopBar extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10 , vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset('assets/logo.jpg',width: 50,height: 50,fit: BoxFit.cover),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Text(
                  'SAKHA',
                  style: TextStyle(
                    color: Color(0xFF4D4D4D),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset('assets/search.jpg',width: 50,height: 50,fit: BoxFit.cover,),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset('assets/table.jpg',width: 50,height: 50,fit: BoxFit.cover,),
              ),
            ],
          )
        ],
      ),
    );
  }
}