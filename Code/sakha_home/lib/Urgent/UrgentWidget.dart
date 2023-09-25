import 'package:flutter/material.dart';

class UrgentWidget extends StatelessWidget{
  int currentIndexProject = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          // title and see all button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Urgent Fundraising",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4D4D4D)
                      ),
                    ),
                  ),
                  const Icon(Icons.arrow_right_alt_sharp)
                ],
              )
            ],
          ),
          // Projects
        Container(
          margin: const EdgeInsets.fromLTRB(0, 20, 0, 40),
          height: 260,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index){
              return Container(
                margin: currentIndexProject == index ? null : const EdgeInsets.only(left: 20),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Image.network('https://sakha.danatportal.com/images/projects/project1.png',height: 150,width: 240,fit: BoxFit.cover,),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: const Text(
                          "Help Orphanage Children to thrive, ..",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: const Row(
                          children: [
                            Text(
                              "\$2,379",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.green
                              ),
                            ),
                            Text(
                              " fund raised from ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                           Text(
                              "\$4,200",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.green
                              ),
                            ),
                          ],
                        ),
                      ),
                      /*
                      Expanded(
                        child: Container(
                          height: 4,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.red,
                          ),
                        ),
                      ),
                      */
                      Container(
                        width: 220,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "1500",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green
                                  ),
                                ),
                                Text(
                                  " Donators",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "19",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green
                                  ),
                                ),
                                Text(
                                  " days left",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
        ],
      ),
    );
  }

}