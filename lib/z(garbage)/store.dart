// import 'package:first_project/components/bottom_navigation_bar.dart';
// import 'package:first_project/components/custom_drawer.dart';
// import 'package:first_project/components/machine_button.dart';
// import 'package:first_project/store/item.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/material.dart';

// class StorePage extends StatefulWidget {
//   const StorePage({Key? key}) : super(key: key);
//   static const String routeName = 'store';

//   @override
//   State<StorePage> createState() => store();
// }

// class store extends State<StorePage> {
//   int selectedIndex = 0;
//   int Nav_Index = 0;

//   List Lectures = [
//     {"icon name": Icons.video_collection, "title": "level 1"},
//     {"icon name": Icons.video_collection, "title": "level 2"},
//     {"icon name": Icons.video_collection, "title": "level 3"},
//     {"icon name": Icons.video_collection, "title": "level 4"}
//   ];

//   List Categories = [
//     {
//       "image": "images/book1.jpg",
//       "title": "Education Life",
//       "subTitle": "For Adults",
//       "price": "40\$",
//       "icon": Icons.monitor_heart
//     },
//     {
//       "image": "images/book2.jpg",
//       "title": "Super Hero",
//       "subTitle": "For Kids",
//       "price": "60\$",
//       "icon": Icons.monitor_heart
//     },
//     {
//       "image": "images/book3.webp",
//       "title": "The Beautiful Girl",
//       "subTitle": "For Kids",
//       "price": "80\$",
//       "icon": Icons.monitor_heart
//     },
//     {
//       "image": "images/book4.webp",
//       "title": "Communication Skills",
//       "subTitle": "For Adults",
//       "price": "55\$",
//       "icon": Icons.monitor_heart
//     },
//     {
//       "image": "images/book5.jpg",
//       "title": "The Sweety World",
//       "subTitle": "For Kids",
//       "price": "30\$",
//       "icon": Icons.monitor_heart
//     },
//     {
//       "image": "images/book6.jpg",
//       "title": "Sign Language",
//       "subTitle": "Adults & Kids",
//       "price": "40\$",
//       "icon": Icons.monitor_heart
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: NavBar(
//         x: 1,
//       ),
//       endDrawer: CustomDrawer(),
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(75),
//         child: AppBar(
//           shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(25),
//             bottomRight: Radius.circular(25),
//           )),
//           elevation: 0,
//           centerTitle: true,
//           title: Column(
//             children: [
//               Icon(
//                 Icons.storefront_outlined,
//                 color: Colors.white,
//                 size: 50,
//               ),
//             ],
//           ),
//           backgroundColor: Theme.of(context).dividerColor,
//         ),
//       ),
//       floatingActionButtonLocation:
//           FloatingActionButtonLocation.miniCenterDocked,
//       floatingActionButton: getMachineButton(context),
//       body: Container(
//         padding: EdgeInsets.all(20),
//         child: ListView(
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   height: 10,
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//                     margin: EdgeInsets.all(10),
//                     child: Text('Top Lectures',
//                         style: GoogleFonts.galindo(
//                           fontWeight: FontWeight.w500,
//                           fontSize: 25,
//                           color: Theme.of(context).textTheme.bodyText1!.color,
//                         )),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Column(
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             color: const Color.fromARGB(255, 245, 234, 130),
//                             borderRadius: BorderRadius.circular(100),
//                           ),
//                           child: Icon(
//                             Icons.video_collection,
//                             size: 30,
//                           ),
//                           padding: EdgeInsets.all(15),
//                         ),
//                         Text(
//                           'Level 1',
//                           style: GoogleFonts.galindo(
//                               fontWeight: FontWeight.w500, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Colors.purple[100],
//                             borderRadius: BorderRadius.circular(100),
//                           ),
//                           child: Icon(Icons.video_collection, size: 30),
//                           padding: EdgeInsets.all(15),
//                         ),
//                         Text(
//                           'Level 2',
//                           style: GoogleFonts.galindo(
//                               fontWeight: FontWeight.w500, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Colors.orange[200],
//                             borderRadius: BorderRadius.circular(100),
//                           ),
//                           child: Icon(Icons.video_collection, size: 30),
//                           padding: EdgeInsets.all(15),
//                         ),
//                         Text(
//                           'Level 3',
//                           style: GoogleFonts.galindo(
//                               fontWeight: FontWeight.w500, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 12,
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Colors.blue[200],
//                             borderRadius: BorderRadius.circular(100),
//                           ),
//                           child: Icon(Icons.video_collection, size: 30),
//                           padding: EdgeInsets.all(15),
//                         ),
//                         Text('Level 4',
//                             style: GoogleFonts.galindo(
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.grey)),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(15),
//                   child: Text('Categories',
//                       style: GoogleFonts.galindo(
//                         textStyle: TextStyle(fontSize: 25),
//                         fontWeight: FontWeight.w500,
//                         color: Theme.of(context).textTheme.bodyText1!.color,
//                       )),
//                 ),
//                 GridView.builder(
//                     itemCount: Categories.length,
//                     physics: NeverScrollableScrollPhysics(),
//                     shrinkWrap: true,
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2, mainAxisExtent: 240),
//                     itemBuilder: (context, i) {
//                       return InkWell(
//                         onTap: () {
//                           Navigator.of(context).push(MaterialPageRoute(
//                               builder: (context) => ItemsDetails(
//                                     data: Categories[i],
//                                   )));
//                         },
//                         child: Card(
//                           color: Colors.white,
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 vertical: 10, horizontal: 20),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   height: 100,
//                                   width: double.infinity,
//                                   color: Colors.grey[350],
//                                   child: Image.asset(
//                                     Categories[i]['image'],
//                                     height: 83,
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
                                
//                                 Text(
//                                   Categories[i]['subTitle'],
//                                   style: TextStyle(
//                                       fontSize: 10, color: Colors.grey),
//                                 ),
//                                 Text(
//                                   Categories[i]['price'],
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.orange,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 35,
//                                   child: IconButton(
//                                     icon: Icon(
//                                       Icons.favorite_border,
//                                       color: Colors.red,
//                                     ),
//                                     onPressed: () {
//                                       (Categories[i]['icon']);
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     })
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
