// import 'package:flutter/material.dart';
// import 'package:ui_design/n_lorem.dart';
// import 'package:ui_design/n_lorem_all_time.dart';

// class TabHome extends StatefulWidget {
//   const TabHome({Key? key}) : super(key: key);

//   @override
//   State<TabHome> createState() => _TabHomeState();
// }

// class _TabHomeState extends State<TabHome> with SingleTickerProviderStateMixin {
//   TabController? tabController;

//   @override
//   void initState() {
//     // TODO: implement initState
//     tabController = TabController(length: 2, vsync: this, initialIndex: 1);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       body: Container(
//         child: Column(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                   color: Colors.white10,
//                   borderRadius: BorderRadius.circular(10)),
//               margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               child: TabBar(
//                 physics: BouncingScrollPhysics(),
//                 indicator: BoxDecoration(
//                     color: Colors.grey,
//                     borderRadius: BorderRadius.circular(10)),
//                 controller: tabController,
//                 onTap: (index) {
//                   setState(() {
//                     tabController!.index = index;
//                   });
//                 },
//                 tabs: [
//                   Tab(
//                     child: Row(
//                       children: [
//                         Text("p1"),
//                         Icon(Icons.abc),
//                       ],
//                     ),
//                   ),
//                   Tab(
//                     text: "Page2",
//                   ),
//                   Tab(
//                     text: "Page3",
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//                 child: TabBarView(
//               controller: tabController,
//               children: [Lorem(), AllTime()],
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }
