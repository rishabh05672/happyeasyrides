// import 'package:flutter/material.dart';
// import 'package:happyeasyrides/screens/notification_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List arrWhyhappyeasy = [
//     {"image": "assets/img/pic_247.png", "title": "24 x 7 Customer Support"},
//     {
//       "image": "assets/img/car_whyHome.png",
//       "title": "Free Delivery On Booking Over 72hrs.",
//     },
//     {"image": "assets/img/pic_247.png", "title": "Best Price Guaranteed"},
//     {"image": "assets/img/car_whyHome.png", "title": "Easy Booking Experience"},
//   ];

//   List arrOffers = [
//     {"image": "assets/img/offers_home.png"},
//     {"image": "assets/img/offers_home.png"},
//     {"image": "assets/img/offers_home.png"},
//     {"image": "assets/img/offers_home.png"},
//   ];

//   List arrTestimonial = [
//     {
//       "name": "Himani Sing",
//       "testimonial":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the when an unknown printer took galley of type and scrambled to make specimen book.",
//     },
//     {
//       "name": "Himani Sing",
//       "testimonial":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the when an unknown printer took galley of type and scrambled to make specimen book.",
//     },
//     {
//       "name": "Himani Sing",
//       "testimonial":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the when an unknown printer took galley of type and scrambled to make specimen book.",
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     final height = size.height;
//     final width = size.width;
//     return Stack(
//       children: [
//         Container(
//           width: width,
//           height: height,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Color(0xff15CF92), Color(0xff047EAA)],
//             ),
//           ),
//           child: Scaffold(
//             backgroundColor: Colors.transparent,
//             appBar: AppBar(
//               toolbarHeight: 60,
//               backgroundColor: Colors.transparent,
//               automaticallyImplyLeading: false,
//               flexibleSpace: Container(
//                 width: width,
//                 height: height * 0.12,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage("assets/img/greentop_coupons.png"),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               title: Padding(
//                 padding: const EdgeInsets.only(top: 15, left: 19, bottom: 27),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Happyeasy Rides Rental",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         // ignore: sized_box_for_whitespace
//                         Container(
//                           width: 15,
//                           height: 19,
//                           child: Icon(
//                             Icons.location_on,
//                             color: Color(0xffFFC641),
//                           ),
//                         ),
//                         SizedBox(width: 7),
//                         Text(
//                           "Enter your location",
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         Icon(Icons.arrow_drop_down, color: Colors.white),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               actions: [
//                 Padding(
//                   padding: const EdgeInsets.only(right: 20, bottom: 33),
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => NotificationScreen(),
//                         ),
//                       );
//                     },
//                     child: Image.asset(
//                       "assets/img/notification_icon.png",
//                       width: 40,
//                       height: 40,
//                     ),
//                   ),
//                 ),
//               ],
//             ),

//             //body
//             body: Stack(
//               children: [
//                 Positioned(
//                   top: 220,
//                   child: Container(
//                     height: height,
//                     width: width,
//                     decoration: BoxDecoration(
//                       //color: Color(0xffF8F8FB),
//                       color: Colors.amber, //Remove--------------------------
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(40),
//                         topRight: Radius.circular(40),
//                       ),
//                     ),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(top: 173, left: 20),
//                             child: Text(
//                               "Why Happyeasy Rides",
//                               style: TextStyle(
//                                 color: Color(0xff100C08),
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),

//                           //----------------------------------
//                           SizedBox(
//                             height: height / 3.8,
//                             child: ListView.builder(
//                               itemCount: arrWhyhappyeasy.length,
//                               scrollDirection: Axis.horizontal,
//                               itemBuilder: (context, index) {
//                                 return Padding(
//                                   padding: const EdgeInsets.only(
//                                     top: 10,
//                                     left: 10,
//                                     bottom: 30,
//                                   ),
//                                   child: Container(
//                                     width: width * 0.5,
//                                     decoration: BoxDecoration(
//                                       color: Color(0xff22D6D1),
//                                       borderRadius: BorderRadius.circular(40),
//                                     ),
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           margin: EdgeInsets.only(top: 20),
//                                           height: 70,
//                                           width: 70,
//                                           decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.circular(
//                                               100,
//                                             ),
//                                             color: Colors.white,
//                                           ),
//                                           child: Center(
//                                             child: Image.asset(
//                                               arrWhyhappyeasy[index]["image"],
//                                               width: 40,
//                                               height: 40,
//                                             ),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(
//                                             top: 14,
//                                             right: 24.18,
//                                             left: 24.18,
//                                             bottom: 14,
//                                           ),
//                                           child: Text(
//                                             textAlign: TextAlign.center,
//                                             arrWhyhappyeasy[index]["title"],
//                                             style: TextStyle(
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w600,
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),

//                           Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(60),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.only(
//                                 top: 18,
//                                 right: 20,
//                                 left: 20,
//                                 bottom: 20,
//                               ),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     "Offers At Happyeasy Rides",
//                                     style: TextStyle(
//                                       color: Color(0xff100C08),
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                   InkWell(
//                                     onTap: () {},
//                                     child: Text(
//                                       "View more >",
//                                       style: TextStyle(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w500,
//                                         color: Color(0xff16CE92),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 200,
//                             child: ListView.builder(
//                               physics: BouncingScrollPhysics(),
//                               scrollDirection: Axis.horizontal,
//                               itemCount: arrOffers.length,
//                               padding: EdgeInsets.symmetric(horizontal: 15),
//                               itemBuilder: (context, index) {
//                                 return Container(
//                                   margin: EdgeInsets.only(
//                                     right: 15,
//                                     top: 10,
//                                     bottom: 10,
//                                   ),
//                                   width: width * 0.8,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     image: DecorationImage(
//                                       image: AssetImage(
//                                         arrOffers[index]["image"],
//                                       ),
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),
//                           SizedBox(height: 20),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 20),
//                             child: Text(
//                               "Offers at Happyeasy Rides",
//                               style: TextStyle(
//                                 color: Color(0xff100C08),
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 13),

//                           SizedBox(
//                             height: 380,
//                             child: ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               itemCount: arrTestimonial.length,
//                               itemBuilder: (context, index) {
//                                 return Container(
//                                   margin: EdgeInsets.only(left: 20),
//                                   width: 296,
//                                   decoration: BoxDecoration(
//                                     border: Border.all(
//                                       width: 1,
//                                       color: Color(0xffE0F1F0),
//                                     ),
//                                     borderRadius: BorderRadius.circular(20),
//                                   ),
//                                   child: Container(
//                                     padding: EdgeInsets.only(
//                                       top: 26.5,
//                                       left: 22.5,
//                                       bottom: 14.5,
//                                       right: 23.5,
//                                     ),
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           arrTestimonial[index]["name"],
//                                           style: TextStyle(
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w600,
//                                             color: Color(0xff3b4051),
//                                           ),
//                                         ),
//                                         Text(
//                                           arrTestimonial[index]["testimonial"],
//                                           style: TextStyle(
//                                             fontSize: 10,
//                                             color: Color(0xff515f65),
//                                           ),
//                                         ),
//                                         SizedBox(height: 4),
//                                         Container(
//                                           width: 40,
//                                           height: 40,
//                                           decoration: BoxDecoration(
//                                             shape: BoxShape.circle,
//                                             color: Color(0xff05073C),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),
//                           SizedBox(height: 250),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 170,
//                   right: 20,
//                   left: 20,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(20),
//                       boxShadow: [
//                         BoxShadow(blurRadius: 1, color: Color(0xffe7ebf5)),
//                       ],
//                     ),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             top: 31,
//                             left: 19,
//                             right: 19,
//                           ),
//                           child: TextField(
//                             decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(40),
//                                 borderSide: BorderSide(
//                                   width: 1,
//                                   color: Color(0xffE7EBF5),
//                                 ),
//                               ),
//                               labelText: "Search city to search",
//                               labelStyle: TextStyle(
//                                 color: Color(0xff6E7FAA),
//                                 fontSize: 16,
//                               ),
//                               border: OutlineInputBorder(
//                                 borderSide: BorderSide(
//                                   width: 1,
//                                   color: Color(0xffE7EBF5),
//                                 ),
//                                 borderRadius: BorderRadius.circular(40),
//                               ),
//                               prefixIcon: SizedBox(
//                                 height: 24,
//                                 width: 24,
//                                 child: Center(
//                                   child: Image.asset(
//                                     "assets/img/car_home.png",
//                                     height: 24,
//                                     width: 24,
//                                     fit: BoxFit.contain,
//                                   ),
//                                 ),
//                               ),
//                               suffixIcon: Icon(Icons.arrow_drop_down_outlined),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 19,
//                             vertical: 20,
//                           ),
//                           child: SizedBox(
//                             width: width,
//                             height: 64,
//                             child: ElevatedButton(
//                               onPressed: () {},
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Color(0xff0077ac),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.search,
//                                     color: Colors.white,
//                                     size: 18,
//                                   ),
//                                   Text(
//                                     "Find Car Now",
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(top: 31),
//                       child: Center(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text(
//                               textAlign: TextAlign.center,
//                               "Book Your Self-Drive Car\nRental Now",
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.w700,
//                                 color: Colors.white,
//                               ),
//                             ),
//                             SizedBox(height: 4),
//                             Container(
//                               width: width * 0.18,
//                               height: 1,
//                               decoration: BoxDecoration(
//                                 color: Color(0xffFFC641),
//                               ),
//                             ),
//                             SizedBox(height: 10),
//                             Text(
//                               "Select The City & Date Now",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             SizedBox(height: 97),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
