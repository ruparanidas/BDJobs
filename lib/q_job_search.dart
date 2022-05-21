import 'package:flutter/material.dart';

class Jobs extends StatefulWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 32, 81, 112),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Text("Job Search"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {},
                  child: Text(
                    "Search",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              width: 450,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              child: ListTile(
                leading: Text(
                  "Keyword",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_drop_down),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              width: 450,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              child: ListTile(
                leading: Text(
                  "General Category",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_drop_down),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("OR",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Container(
              width: 450,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              child: ListTile(
                leading: Text(
                  "Special skilled cayegory",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_drop_down),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              width: 450,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              child: ListTile(
                leading: Text(
                  "Location",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_drop_down),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Experience",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              )),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Card(
                  elevation: 8,
                  child: Container(
                    height: 50,
                    width: 150,
                    child: Center(
                        child: Text(
                      "Less than 1 year",
                      style: TextStyle(fontSize: 18),
                    )),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Card(
                elevation: 8,
                child: Container(
                  height: 50,
                  width: 120,
                  child: Center(
                      child: Text(
                    "1 - 3 years",
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Card(
                  elevation: 8,
                  child: Container(
                    height: 50,
                    width: 150,
                    child: Center(
                        child: Text(
                      "3 - 5 years",
                      style: TextStyle(fontSize: 18),
                    )),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Card(
                elevation: 8,
                child: Container(
                  height: 50,
                  width: 120,
                  child: Center(
                      child: Text(
                    "5 - 10 years",
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Card(
                  elevation: 8,
                  child: Container(
                    height: 50,
                    width: 150,
                    child: Center(
                        child: Text(
                      "Over 10 years",
                      style: TextStyle(fontSize: 18),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
