import 'package:flutter/material.dart';

class DiscoverZakat extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return 
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 165,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage('assets/discover.jpg'),
                fit: BoxFit.cover,
              )
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 135,
                    padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 5),
                    child: const Text(
                      "Donate For Someone Else!",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(bottom: 10),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: 
                      const Text(
                        'Discover Now!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                  ),
                ],
              ),
            )
          ),
          // container 2 zakat
        Container(
          width: 165,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage('assets/zakat.jpg'),
              fit: BoxFit.cover,
            )
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 135,
                  padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 5),
                  child: const Text(
                    "Zakat Calculator",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(bottom: 10),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: 
                    const Text(
                      'Calculate Zakat!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                ),
              ],
            ),
          )
        ),
        ],
      ),
    );
  }
}