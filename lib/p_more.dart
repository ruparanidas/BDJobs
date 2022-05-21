import 'package:flutter/material.dart';
import 'package:ui_design/q_job_search.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 80, 118),
        title: Text("More"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Jobs()));
              },
              icon: Icon(Icons.search)),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.notifications),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.person),
          SizedBox(
            width: 30,
          ),
        ],
      ),
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
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 18,
                          left: 10,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.settings,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Manage \nResume",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 44,
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        Color.fromARGB(255, 70, 80, 175),
                                    child: Icon(
                                      Icons.file_copy_rounded,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Applied \n Jobs",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 44,
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        Color.fromARGB(255, 236, 34, 54),
                                    child: Icon(
                                      Icons.favorite_sharp,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Favorite \n Search",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 44,
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        Color.fromARGB(255, 106, 106, 106),
                                    child: Icon(
                                      Icons.person_add,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Followed\nEmployers",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Card(
                          elevation: 8,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: TextFormField(
                              decoration:
                                  InputDecoration(hintText: 'Job Search'),
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "General Search",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.cases_outlined,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "New Jobs(24 hrs)",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.watch_later,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "Deadline Tomorrow ",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.business_center,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "Part Time Jobs",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.list_alt_outlined,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "Contractual  Jobs",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.flag_circle,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "Government Jobs",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 1,
                        width: 400,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.pages_outlined,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "Job Application Guideline",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.mail,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "Emailed Resume",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.remove_red_eye,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "Employer Viewed Resume",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.people,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "Interview Invitations",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.interests,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "Upcoming Traning",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.settings,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          " Settings",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 1,
                        width: 400,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.info_rounded,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "App Guides",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.star,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "Rate Us on Gogle Play Store",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.message_outlined,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "Feedback and Support",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.feedback_rounded,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "Privacy Policy",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.list_alt,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                        title: Text(
                          "Teams and Policies",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
        ]),
      ),
    );
  }
}
