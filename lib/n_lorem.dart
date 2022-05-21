import 'package:flutter/material.dart';

class Lorem extends StatefulWidget {
  const Lorem({Key? key}) : super(key: key);

  @override
  State<Lorem> createState() => _LoremState();
}

class _LoremState extends State<Lorem> {
  bool _n2asBeenPressed = false;
  bool _n1asBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.settings_applications),
        backgroundColor: Colors.green,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20.0)), //this right here
                  child: Container(
                    height: 250,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Manage Resume"),
                              SizedBox(
                                width: 185,
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(Icons.cancel))
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Icon(Icons.edit_calendar),
                                  ),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Text("Edit Resume"),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Icon(Icons.description_rounded)),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Text("View Resume"),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 8,
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Icon(Icons.cloud_upload_outlined)),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Text("Upload Resume"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
      ),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(206, 17, 55, 99),
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Lorem',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.notifications),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Icon(Icons.account_circle_rounded),
            ),
          ]),
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
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    height: 37,
                    width: 170,
                    child: Row(
                      children: [
                        MaterialButton(
                          height: 42,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5))),
                          color: _n1asBeenPressed
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 0, 0, 0),
                          onPressed: () {
                            setState(() {
                              _n1asBeenPressed = !_n1asBeenPressed;
                              _n2asBeenPressed = !_n2asBeenPressed;
                            });
                          },
                          child: Text(
                            "This Month",
                            style: TextStyle(
                              fontSize: 14,
                              color: _n1asBeenPressed
                                  ? Color.fromARGB(255, 23, 23, 23)
                                  : Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        MaterialButton(
                          height: 42,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5))),
                          color: _n2asBeenPressed
                              ? Color.fromARGB(255, 0, 0, 0)
                              : Color.fromARGB(255, 255, 255, 255),
                          onPressed: () {
                            setState(() {
                              _n2asBeenPressed = !_n2asBeenPressed;
                              _n1asBeenPressed = !_n1asBeenPressed;
                            });
                          },
                          child: Text(
                            "All Time",
                            style: TextStyle(
                              fontSize: 14,
                              color: _n2asBeenPressed
                                  ? Color.fromARGB(255, 255, 255, 255)
                                  : Color.fromARGB(255, 5, 5, 5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(bottom: 20, top: 20),
                  //   child: Container(
                  //     height: 50,
                  //     width: 200,
                  //     decoration: BoxDecoration(
                  //         gradient: LinearGradient(
                  //             colors: [Colors.cyan, Colors.amber, Colors.pink])),
                  //   ),
                  // ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25, right: 10),
                              child: Container(
                                height: 140,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    gradient: LinearGradient(colors: [
                                      Color.fromARGB(255, 22, 16, 94),
                                      Color.fromARGB(255, 68, 76, 185)
                                    ])),
                                child: ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, top: 15),
                                    child: Text(
                                      '13',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Jobs\nApplied',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  trailing: Padding(
                                    padding: const EdgeInsets.only(top: 65),
                                    child: Icon(
                                      Icons.file_open,
                                      size: 30,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 10),
                              child: Container(
                                height: 140,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    gradient: LinearGradient(colors: [
                                      Color.fromARGB(255, 168, 39, 93),
                                      Color.fromARGB(255, 192, 39, 39)
                                    ])),
                                child: ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, top: 15),
                                    child: Text(
                                      '13',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Times Emailed\nResume',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  trailing: Padding(
                                    padding: const EdgeInsets.only(top: 65),
                                    child: Icon(
                                      Icons.send,
                                      size: 30,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25, right: 15),
                              child: Container(
                                height: 140,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    gradient: LinearGradient(colors: [
                                      Color.fromARGB(255, 245, 104, 49),
                                      Color.fromARGB(255, 236, 224, 58)
                                    ])),
                                child: ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, top: 10),
                                    child: Text(
                                      '9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Employeers Viewed\nApplied',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                height: 140,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    gradient: LinearGradient(colors: [
                                      Color.fromARGB(255, 10, 118, 133),
                                      Color.fromARGB(255, 86, 186, 216)
                                    ])),
                                child: ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, top: 10),
                                    child: Text(
                                      '7',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Employers\nFollowed',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  trailing: Padding(
                                    padding: const EdgeInsets.only(top: 65),
                                    child: Icon(
                                      Icons.person_add,
                                      size: 30,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25, right: 15),
                              child: Container(
                                height: 140,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    gradient: LinearGradient(colors: [
                                      Color.fromARGB(255, 99, 14, 121),
                                      Color.fromARGB(255, 194, 47, 207)
                                    ])),
                                child: ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, top: 10),
                                    child: Text(
                                      '5',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Interview\nInvitations',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  trailing: Padding(
                                    padding: const EdgeInsets.only(top: 65),
                                    child: Icon(
                                      Icons.bug_report,
                                      size: 30,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                height: 140,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    gradient: LinearGradient(colors: [
                                      Color.fromARGB(255, 88, 88, 88),
                                      Color.fromARGB(255, 149, 155, 158)
                                    ])),
                                child: ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, top: 10),
                                    child: Text(
                                      '5',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Times Emailed\nResume',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  trailing: Padding(
                                    padding: const EdgeInsets.only(top: 65),
                                    child: Icon(
                                      Icons.message,
                                      size: 30,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
          // Positioned(
          //   bottom: 20,
          //   right: 20,
          //   child: FloatingActionButton(
          //     onPressed: () {},
          //     child: Icon(Icons.file_copy_outlined),
          //     backgroundColor: Colors.red,
          //   ),
          // )
        ]),
      ),
    );
  }
}
