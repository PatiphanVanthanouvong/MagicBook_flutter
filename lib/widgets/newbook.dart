// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';



// class NewBook extends StatefulWidget {
 

//   @override
//   State<NewBook> createState() => _NewBookState();
// }

// class _NewBookState extends State<NewBook> {
//   @override
//   Widget build(BuildContext context) {
//    return Container(
//       height: 320,
//       child: ListView.separated(
//         shrinkWrap: true,
//         itemCount: 4,
//         separatorBuilder: (context, _) => SizedBox(
//           width: 15,
//         ),
//         itemBuilder: (context, index) => InkWell(
//       onTap: () {},
//       child: Container(
//         decoration: BoxDecoration(
//           // color: items == 1
//           //     ? Colors.amberAccent
//           //     : const Color(0xFFF2F8FF),
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(15),
                        
//                         bottomRight:  Radius.circular(15),
//                       ),
//         ),
//         width: 160,
//         height: 70,
//         child: Column(
//           children: [
//             InkWell(
//               onTap: () {
//                 // Navigator.push(
//                 //     context,
//                 //     MaterialPageRoute(
//                 //         builder: (context) => ItemScreen()));
//               },
//               child: Container(
//                 child: Image.asset(
//                   items1[index].imageset,
//                   width: 180,
//                   height: 220,
//                  fit: BoxFit.cover,
                  
//                 ),
//               ),
//             ),
//             SizedBox(height: 5),
//             Padding(
//               padding: const EdgeInsets.only(left: 8.0),
//               child: Align(
//                 alignment: Alignment.topLeft,
//                 // child: Text(
//                 //   items.title,
//                 //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                 // ),
//                 child: Text(
//                  items1[index].title,
//                   style: GoogleFonts.notoSerifLao(
//                     textStyle: TextStyle(
//                         color: Colors.black, fontSize: 18,  fontWeight: FontWeight.w600),
//                   ),
//                 ),
//               ),
//             ),
          
//             Padding(
//               padding: const EdgeInsets.only(left: 8.0),
//               child: Align(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   items1[index].subtitle,
//                   style: GoogleFonts.notoSerifLao(
//                     textStyle: TextStyle(
//                         color: Colors.black, fontSize: 11),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(padding:  EdgeInsets.only(left: 0, right: 0 )),
//                 Padding(    
//                   padding: EdgeInsets.only(left: 8),
//                   child: Container(
//                     padding:  EdgeInsets.symmetric(horizontal: 0),
//                     width: 70,
//                     height: 20,
//                     decoration: BoxDecoration(
//                       color: Color(0xff4E6859),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Center(
//                       child: Text(
//                         items1[index].price,
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 10,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 8),
//                   child: Icon(Icons.shopping_cart_outlined),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//         scrollDirection: Axis.horizontal,
//       ),
//     );
//   }
// }

// class NewBookt {
//   final String title;
//   final String subtitle;
//   final String imageset;
// final String price;
//    NewBookt( {
//     required this.title,
//     required this.subtitle,
//      required this.imageset,
//      required this.price,
//   });
// }

// List<NewBookt> items1 = [
//    NewBookt(
//     title: 'ບົວແດງ',
//     subtitle: 'KORAWIA | KORAWIA',
//     imageset: "images/product6.png",
//     price: "50.000 ₭",
    
//   ),
//    NewBookt(
//     title: '13:00',
//      imageset: 'images/product3.png',
//      price: "50.000 ₭",
//     subtitle: 'KORAWIA | KORAWIA'
    
    
//   ),
//    NewBookt(
//     title: '14:00',
//      imageset: 'images/product2.png',
//      price: "50.000 ₭",
//     subtitle: 'KORAWIA | KORAWIA'
//   ),
//    NewBookt(
//     title: '15:00',
//      imageset: 'images/product1.png',
//      price: "50.000 ₭",
//     subtitle: 'KORAWIA | KORAWIA'
//   ),
// ];



// class GoodBook extends StatefulWidget {
 

//   @override
//   State<GoodBook> createState() => _GoodBookState();
// }

// class _GoodBookState extends State<GoodBook> {
//   @override
//   Widget build(BuildContext context) {
//    return Container(
//       height: 320,
//       child: ListView.separated(
//         shrinkWrap: true,
//         itemCount: 4,
//         separatorBuilder: (context, _) => SizedBox(
//           width: 15,
//         ),
//         itemBuilder: (context, index) => InkWell(
//       onTap: () {},
//       child: Container(
//         decoration: BoxDecoration(
//           // color: items == 1
//           //     ? Colors.amberAccent
//           //     : const Color(0xFFF2F8FF),
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(15),
                        
//                         bottomRight:  Radius.circular(15),
//                       ),
//         ),
//         width: 160,
//         height: 70,
//         child: Column(
//           children: [
//             InkWell(
//               onTap: () {
//                 // Navigator.push(
//                 //     context,
//                 //     MaterialPageRoute(
//                 //         builder: (context) => ItemScreen()));
//               },
//               child: Container(
//                 child: Image.asset(
//                   items2[index].imageset,
//                   width: 180,
//                   height: 220,
//                  fit: BoxFit.cover,
                  
//                 ),
//               ),
//             ),
//             SizedBox(height: 5),
//             Padding(
//               padding: const EdgeInsets.only(left: 8.0),
//               child: Align(
//                 alignment: Alignment.topLeft,
//                 // child: Text(
//                 //   items.title,
//                 //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                 // ),
//                 child: Text(
//                  items2[index].title,
//                   style: GoogleFonts.notoSerifLao(
//                     textStyle: TextStyle(
//                         color: Colors.black, fontSize: 18,  fontWeight: FontWeight.w600),
//                   ),
//                 ),
//               ),
//             ),
          
//             Padding(
//               padding: const EdgeInsets.only(left: 8.0),
//               child: Align(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   items1[index].subtitle,
//                   style: GoogleFonts.notoSerifLao(
//                     textStyle: TextStyle(
//                         color: Colors.black, fontSize: 11),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(padding:  EdgeInsets.only(left: 0, right: 0 )),
//                 Padding(    
//                   padding: EdgeInsets.only(left: 8),
//                   child: Container(
//                     padding:  EdgeInsets.symmetric(horizontal: 0),
//                     width: 70,
//                     height: 20,
//                     decoration: BoxDecoration(
//                       color: Color(0xff4E6859),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Center(
//                       child: Text(
//                         items2[index].price,
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 10,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 8),
//                   child: Icon(Icons.shopping_cart_outlined),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//         scrollDirection: Axis.horizontal,
//       ),
//     );
//   }
// }

// class GoodBookt {
//   final String title;
//   final String subtitle;
//   final String imageset;
// final String price;
//    GoodBookt( {
//     required this.title,
//     required this.subtitle,
//      required this.imageset,
//      required this.price,
//   });
// }

// List<GoodBookt> items2 = [
//    GoodBookt(
//     title: 'ບົວແດງ',
//     subtitle: 'KORAWIA | KORAWIA',
//     imageset: "images/product6.png",
//     price: "50.000 ₭",
    
//   ),
//    GoodBookt(
//     title: 'Hahahhahah',
//      imageset: 'images/product3.png',
//      price: "50.000 ₭",
//     subtitle: 'KORAWIA | KORAWIA'
    
    
//   ),
//    GoodBookt(
//     title: '14:00',
//      imageset: 'images/product2.png',
//      price: "50.000 ₭",
//     subtitle: 'KORAWIA | KORAWIA'
//   ),
//    GoodBookt(
//     title: '15:00',
//      imageset: 'images/product1.png',
//      price: "50.000 ₭",
//     subtitle: 'KORAWIA | KORAWIA'
//   ),
// ];





