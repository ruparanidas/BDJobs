import 'package:flutter/material.dart';
import 'package:ui_design/k_congratulation.dart';

class UserId extends StatefulWidget {
  const UserId({Key? key}) : super(key: key);

  @override
  State<UserId> createState() => _UserIdState();
}

class _UserIdState extends State<UserId> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _cpasswordController = TextEditingController();
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
              child: Container(
            child: Column(
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
                        width: 310,
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
                        "Set as User ID (Email Address / Mobile)",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(255, 84, 67, 180),
                                width: 2),
                            color: Color.fromARGB(255, 84, 67, 180)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(
                                  Icons.email,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'ruparanidas@gmail.com',
                                //textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
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
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.pink, width: 2),
                            color: Colors.white),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(
                                  Icons.phone_android_outlined,
                                  size: 25,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Mobile Number',
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
                      Text(
                        'Type Password',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Use at least 8 to 12 charecters",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        child: Form(
                            key: _formkey,
                            child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                          color: Colors.purple, width: 2),
                                    ),
                                    hintText: "Enter Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[900]),
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 20,
                                    ),
                                    suffixIcon:
                                        Icon(Icons.remove_red_eye_sharp),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: _cpasswordController,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                          color: Colors.purple, width: 2),
                                    ),
                                    hintText: "Enter Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[900]),
                                    labelText: "Confirm Password",
                                    labelStyle: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 20,
                                    ),
                                    suffixIcon:
                                        Icon(Icons.remove_red_eye_sharp),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Congratulation()));
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
