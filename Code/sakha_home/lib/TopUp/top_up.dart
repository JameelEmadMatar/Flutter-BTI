import 'package:flutter/material.dart';

class TopUp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
          children: [
            Image.asset('assets/wallet.png',height: 50,fit: BoxFit.cover,width: 50,),
            Container(
              margin: const EdgeInsets.only(left: 10),
              height: 50,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$483",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "My wallet balance",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                    ),
                ],
              ),
            ),
          ],
        ),
        Image.asset('assets/topup.jpg',height: 50,fit: BoxFit.cover)
      ]),
    );
  }
}