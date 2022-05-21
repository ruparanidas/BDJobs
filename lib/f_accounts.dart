import 'package:flutter/material.dart';
import 'package:ui_design/g_sign_in_2.dart';

class BDJAccounts extends StatefulWidget {
  const BDJAccounts({Key? key}) : super(key: key);

  @override
  State<BDJAccounts> createState() => _BDJAccountsState();
}

class _BDJAccountsState extends State<BDJAccounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              'https://cdn.pixabay.com/photo/2020/01/26/11/46/paper-flower-background-4794429_960_720.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 35,
                    color: Colors.grey[800],
                  )),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 4,
                      width: 300,
                      color: Color.fromARGB(255, 194, 193, 193),
                    ),
                  ),
                  Positioned(
                    left: 90,
                    child: Container(
                      height: 4,
                      width: 100,
                      color: Color.fromARGB(255, 17, 189, 23),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "Create Your Free Bd Jobs Account",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.pink, width: 2),
                          color: Colors.white),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'G',
                              //textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Import From Google',
                              //textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.pink, width: 2),
                          color: Colors.white),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'f',
                              //textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 3, 44, 116)),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Import From Facebook',
                              //textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 8,
                            child: Divider(
                              height: 1,
                              color: Colors.grey[800],
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(flex: 1, child: Text('OR')),
                        SizedBox(
                          width: 2,
                        ),
                        Expanded(
                            flex: 8,
                            child: Divider(
                              height: 1,
                              color: Colors.grey[800],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignIn2()));
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            //border: Border.all(color: Colors.pink, width: 2),
                            color: Colors.black),
                        child: Center(
                          child: Text(
                            'Enter your information',
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
          Positioned(
            bottom: 20,
            left: 230,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "For any help",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Call at 163547",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
