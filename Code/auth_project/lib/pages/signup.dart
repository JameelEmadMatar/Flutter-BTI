import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatelessWidget {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPass = TextEditingController();

  send() {
    var formData = formState.currentState;
    formData!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children:[ 
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'myfont'),
                  )),
                  SvgPicture.asset(
                    'assets/icons/signup.svg',
                    width: 150,
                  ),
                  Form(
                    key: formState,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.length < 10) {
                                  return "Min Length Is 10";
                                }
                                return null;
                              },
                              onSaved: (value) {},
                              autovalidateMode: AutovalidateMode.always,
                              controller: userEmail,
                              textInputAction: TextInputAction.done,
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                  hintText: "jameelmatar1@gmail.com",
                                  prefixIcon: Icon(Icons.person,
                                      color: Color(0xFF643d9f), size: 25),
                                  filled: true,
                                  fillColor: Color(0xFFD5C9E1),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.length < 10) {
                                  return "Min Length Is 10";
                                }
                                return null;
                              },
                              controller: userPass,
                              textInputAction: TextInputAction.done,
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              decoration: const InputDecoration(
                                  hintText: "Password",
                                  prefixIcon: Icon(Icons.lock,
                                      size: 25, color: Color(0xFF643d9f)),
                                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                                  filled: true,
                                  fillColor: Color(0xFFD5C9E1),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                          InkWell(
                            onTap: () => {send()},
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                color: Color(0xFF643d9f),
                              ),
                              child: const Text(
                                "Sign Up",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Already have an Account ? ",
                                style: TextStyle(fontSize: 18),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/login');
                                },
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            width: 280,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: Divider(thickness: 2)),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('OR'),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(child: Divider(thickness: 2)),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: const Color(0xFFeeeeee),
                                        width: 3)),
                                child: SvgPicture.asset(
                                    'assets/icons/facebook.svg'),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: const Color(0xFFeeeeee),
                                        width: 3)),
                                child: SvgPicture.asset(
                                    'assets/icons/twitter.svg'),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: const Color(0xFFeeeeee),
                                        width: 3)),
                                child: SvgPicture.asset(
                                    'assets/icons/google-plus.svg'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}
