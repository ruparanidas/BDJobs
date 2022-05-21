import 'package:flutter/material.dart';
import 'package:ui_design/j_email_add.dart';

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  TextEditingController _numberController = TextEditingController();
  TextEditingController _number1Controller = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey();
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
                      width: 250,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Provide your Mobile No and Email Address(atleast one)",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: double.infinity,
                      child: Form(
                        key: _formkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              controller: _numberController,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 2),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: Colors.purple, width: 2),
                                ),
                                hintText: "Bangladesh(+088)",
                                hintStyle: TextStyle(color: Colors.grey[900]),
                                labelText: "Country Code",
                                labelStyle: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _number1Controller,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 2),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: Colors.purple, width: 2),
                                ),
                                hintText: "Enter Your Number",
                                hintStyle: TextStyle(color: Colors.grey[900]),
                                labelText: "Mobile Number",
                                labelStyle: TextStyle(
                                  color: Colors.grey[900],
                                  fontSize: 20,
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
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 2),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: Colors.purple, width: 2),
                                ),
                                hintText: "Enter Your Email",
                                hintStyle: TextStyle(color: Colors.grey[900]),
                                labelText: "Email",
                                labelStyle: TextStyle(
                                  color: Colors.grey[900],
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
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
              right: 20,
              child: Row(
                children: [
                  Column(
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
                  SizedBox(
                    width: 120,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => UserId()));
                    },
                    child: Icon(Icons.arrow_forward),
                    backgroundColor: Colors.red,
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}
