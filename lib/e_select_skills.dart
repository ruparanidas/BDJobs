import 'package:flutter/material.dart';
import 'package:ui_design/f_accounts.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
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
                  ),
                ),
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
                        width: 50,
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
                  child: Text(
                    'Select skills from the list',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.pink, width: 2),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, top: 13),
                          child: Text(
                            'Accounting/Finance',
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.pink, width: 2),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, top: 13),
                          child: Text(
                            'Media/Advertisement/Event Mgt.',
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.pink, width: 2),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, top: 13),
                          child: Text(
                            'Medical/Pharma',
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.pink, width: 2),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, top: 13),
                          child: Text(
                            'NGO/Development',
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.pink, width: 2),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, top: 13),
                          child: Text(
                            'Research/Consultancy',
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.pink, width: 2),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, top: 13),
                          child: Text(
                            'Secretary/Receptionust',
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
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
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BDJAccounts()));
              },
              child: Icon(Icons.arrow_forward),
              backgroundColor: Colors.red,
            ),
          )
        ]),
      ),
    );
  }
}
