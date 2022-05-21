import 'package:flutter/material.dart';
import 'package:ui_design/c_sign_in.dart';

class SearchJob extends StatefulWidget {
  const SearchJob({Key? key}) : super(key: key);

  @override
  State<SearchJob> createState() => _SearchJobState();
}

class _SearchJobState extends State<SearchJob> {
  // Initial Selected Value
  String dropdownvalue = 'Job Title';
  //String dropdownvalue1 = 'Loaction';
  //String dropdownvalue2 = 'Job Title';

  // List of items in our dropdown menu
  var items = [
    'Job Title',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  // var items1 = [
  //   'Job Title','Item 2','Item 3','Item 4','Item 5',
  // ];
  // var items2 = [
  //   'Job Title','Item 2','Item 3','Item 4','Item 5',
  // ];
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
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      trailing: Icon(
                        Icons.account_circle_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Search Job",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: dropdownvalue,
                          isExpanded: true,
                          iconSize: 36, // Initial Value
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ), // Down Arrow Icon
                          items: items.map((String items) {
                            // Array list of items
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: dropdownvalue,
                          isExpanded: true,
                          iconSize: 36,
                          // Initial Value
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ), // Down Arrow Icon
                          items: items.map((String items) {
                            // Array list of items
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: dropdownvalue,
                          isExpanded: true,
                          iconSize: 36, // Initial Value
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ), // Down Arrow Icon
                          items: items.map((String items) {
                            // Array list of items
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 49, 17, 90),
                          borderRadius: BorderRadius.circular(10),
                          //border: Border.all(width: 2, color: Colors.grey)
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Text(
                              'Search',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.grey)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.newspaper_sharp,
                              color: Colors.red[600],
                              size: 30,
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Text(
                              'View New Jobs',
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: Column(
                            children: [
                              Text(
                                "For any help",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Call at 16479",
                                style:
                                    TextStyle(fontSize: 15, color: Colors.red),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignIn()));
                          },
                          backgroundColor: Colors.red[500],
                          child: Icon(
                            Icons.arrow_forward,
                            size: 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
