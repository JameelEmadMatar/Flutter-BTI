
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState(){
    return MealClass();
  }
}
class MealClass extends State<MyApp>{
  double mainPrice = 21.00 ;
  dynamic size = "0.00";
  double finalPrice = 21.00;
  List extras = [true , false];
  List extrasValues = [0.00 , 0.00];
  double sumOfExtras = 0.00;
  int quantity = 1;
  addExtra(index , value){
    sumOfExtras = 0.00;
    extrasValues[index] = value;
    extrasValues.forEach((element) {
      sumOfExtras = sumOfExtras + element;
    });
  }
  calcPrice(){
    finalPrice = (mainPrice + double.parse(size as String) + sumOfExtras) * quantity;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: [
            // Image
            Image.network("https://plus.unsplash.com/premium_photo-1675451537771-0dd5b06b3985?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            // title
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
              child: const Text(
                "بيتزا بالخضار",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            // Description
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: const Text(
                "بيتزا بالخضار مميزة",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            // price and quantity
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Button
                  Container(
                    width: 100,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xFFE5E5E5) )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // plus
                        InkWell(
                          onTap: () => {
                            setState((){
                              quantity = quantity + 1;
                              calcPrice();
                            })
                          },
                          child: const Icon(
                            Icons.add , 
                            size: 15,
                            color: Color(0xFF5ADEFF),
                          )
                        ),
                        // quantity
                        Text(
                          quantity.toString(),
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        // minus
                        InkWell(
                          onTap: () => {
                            setState((){
                              if(quantity > 1){
                                quantity = quantity - 1;
                              }
                              calcPrice();
                            })
                          },
                          child: const Icon(
                            Icons.remove , 
                            size: 15,
                            color: Color(0xFF5ADEFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Price
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "$finalPrice  د.ا",
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color(0xFFDEDEDE),
             thickness: 5,
            ),
            // الحجم
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                  child: const Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Text(
                        "  اختيارك من الحجم",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "(اختياري)",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(right: 20),
                  child: const Text(
                    "اختر من القائمة",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("صنف 1"),
                          Radio(value: "0.00", groupValue: size, onChanged:(value) => {
                            setState((){
                              size = value;
                              calcPrice();
                            })
                          },)
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFDDDDDD),
                        thickness: 3,
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("صنف 2"),
                          Row(
                            children: [
                              Radio(value: "9.00", groupValue: size, onChanged:(value) => {
                                setState((){
                                  size = value;
                                  calcPrice();
                                })
                              },),
                              const Text(
                                "(+9.00 د.ا)",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Color(0xFFC3C3C3),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFDDDDDD),
                        thickness: 3,
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("صنف 3"),
                          Row(
                            children: [
                              Radio(value: "18.00", groupValue: size, onChanged:(value) => {
                                setState((){
                                  size = value;
                                  calcPrice();
                                })
                              },),
                              const Text(
                                "(+18.00 د.ا)",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Color(0xFFC3C3C3),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xFFDEDEDE),
                  thickness: 5,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                  child: const Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Text(
                        "  اختيارك من الإضافات",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "(اختياري)",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(right: 20),
                  child: const Text(
                    "اختر من القائمة",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("صنف 1"),
                          Checkbox(value: extras[0], onChanged:(value) => {
                            setState((){
                              extras[0] = value;
                              addExtra(0 , 0.00);
                              calcPrice();
                            })
                          },)
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFDDDDDD),
                        thickness: 3,
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("صنف 2"),
                          Row(
                            children: [
                              Checkbox(value: extras[1], onChanged:(value) => {
                                setState((){
                                  extras[1] = value;
                                  if(value == true){
                                    addExtra(1 , 9.00);
                                    calcPrice();
                                  }else{
                                    addExtra(1 , 0.00);
                                    calcPrice();
                                  }
                                })
                              },),
                              const Text(
                                "(+9.00 د.ا)",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Color(0xFFC3C3C3),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}