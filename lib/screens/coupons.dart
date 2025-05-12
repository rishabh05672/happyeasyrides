import 'package:flutter/material.dart';
import 'package:happyeasyrides/common/custom_bottom_navigation.dart';
import 'package:happyeasyrides/provider/coupons_provider.dart';
import 'package:happyeasyrides/screens/notification_screen.dart';
import 'package:provider/provider.dart';

class Coupons extends StatefulWidget {
  const Coupons({super.key});

  @override
  State<Coupons> createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
  @override
  Widget build(BuildContext context) {
    //final offers = Provider.of<CouponsProvider>(context).offer;
    Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff15CF92), Color(0xff047EAA)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/img/greentop_coupons.png",
                  width: width,
                  height: height * 0.12,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: width * 0.05,
                    bottom: height * 0.04,
                    top: height * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CustomBottomNavigation(),
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/img/Icon feather-arrow-right.png",
                          width: width * 0.06,
                          height: width * 0.06,
                        ),
                      ),

                      Text(
                        "COUPONS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: size.width * 0.04),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NotificationScreen(),
                              ),
                            );
                          },
                          child: Image.asset(
                            "assets/img/notification_icon.png",
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.035),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 16.13, right: 20, left: 20),
                decoration: BoxDecoration(
                  color: Color(0xffF8F8FB),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Consumer<CouponsProvider>(
                    // ignore: avoid_types_as_parameter_names
                    builder: (ctx, CouponsProvider, child) {
                      return Column(
                        children: [
                          ...List.generate(CouponsProvider.offer.length, (
                            index,
                          ) {
                            return Container(
                              margin: EdgeInsets.only(top: 12.47),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage(
                                    CouponsProvider
                                            .offer[index]['backgroundImage'] ??
                                        "",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 36.4,
                                          left: 23,
                                          bottom: 58.39,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              CouponsProvider
                                                      .offer[index]['title'] ??
                                                  "",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff0077AC),
                                              ),
                                            ),
                                            Text(
                                              CouponsProvider
                                                      .offer[index]['discount'] ??
                                                  "",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 21,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff05073C),
                                              ),
                                            ),
                                            Text(
                                              CouponsProvider
                                                      .offer[index]['description'] ??
                                                  "",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 9,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff100C08),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                top: 8.19,
                                              ),
                                              width: 111.11,
                                              height: 33.33,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 12.35,
                                                  right: 4.44,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Know More",
                                                      style: TextStyle(
                                                        fontFamily: "Poppins",
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color(
                                                          0xff05073C,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 24.44,
                                                      width: 24.44,
                                                      decoration: BoxDecoration(
                                                        color: Color(
                                                          0xff16CE92,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              50,
                                                            ),
                                                      ),
                                                      child: Icon(
                                                        Icons
                                                            .arrow_right_alt_outlined,
                                                        color: Colors.white,
                                                        size: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 200,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              CouponsProvider
                                                      .offer[index]['image'] ??
                                                  "",
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Center(
                                      child: Container(
                                        width: 125,
                                        height: 95,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              CouponsProvider
                                                      .offer[index]['carImage'] ??
                                                  "",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    //Scaffold(
    //backgroundColor: ,
    // backgroundColor: Color(0xff15CF92),
    // appBar: AppBar(
    //   centerTitle: true,
    //   backgroundColor: Color(0xff15CF92),
    //   flexibleSpace: Container(
    //     width: double.infinity,
    //     height: 116,
    //     decoration: BoxDecoration(
    //       image: DecorationImage(
    //         image: AssetImage("assets/img/greentop_coupons.png"),
    //         fit: BoxFit.fill,
    //       ),
    //     ),
    //   ),
    //   title: Text(
    //     "COUPONS",
    //     style: TextStyle(
    //       fontFamily: "Poppins",
    //       fontSize: 20,
    //       fontWeight: FontWeight.w600,
    //       color: Colors.white,
    //     ),
    //   ),
    //   leading: Padding(
    //     padding: const EdgeInsets.only(bottom: 10.0),
    //     child: IconButton(
    //       onPressed: () {
    //         Navigator.pop(context);
    //       },
    //       icon: Icon(Icons.arrow_back_sharp, color: Colors.white, size: 21),
    //     ),
    //   ),
    //   actions: [
    //     Padding(
    //       padding: const EdgeInsets.only(top: 5, right: 20, bottom: 20),
    //       child: GestureDetector(
    //         onTap: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(builder: (context) => NotificationScreen()),
    //           );
    //         },
    //         child: Image.asset(
    //           "assets/img/notification_icon.png",
    //           width: MediaQuery.of(context).size.width * 0.09,
    //           height: MediaQuery.of(context).size.height * 0.04,
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
    // //Body
    // body: Column(
    //   children: [
    //     Expanded(
    //       child: Container(
    //         margin: EdgeInsets.only(top: 34),
    //         decoration: BoxDecoration(
    //           color: Colors.white,
    //           borderRadius: BorderRadius.only(
    //             topLeft: Radius.circular(50),
    //             topRight: Radius.circular(50),
    //           ),
    //         ),
    //         child:
    //
    // ListView.builder(
    //           itemCount: offer.length,
    //           itemBuilder: (context, index) {
    //             return
    //
    // Container(
    //               margin: EdgeInsets.only(
    //                 left: 20,
    //                 right: 20,
    //                 top: 12,
    //                 bottom: 12,
    //               ),
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(30),
    //                 image: DecorationImage(
    //                   image: AssetImage("${offer[index]['backgroundImage']}"),
    //                   fit: BoxFit.fill,
    //                 ),
    //               ),
    //               child: Stack(
    //                 children: [
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Padding(
    //                         padding: const EdgeInsets.only(
    //                           top: 36.4,
    //                           left: 23,
    //                           bottom: 58.39,
    //                         ),
    //                         child: Column(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             Text(
    //                               "${offer[index]['title']}",
    //                               style: TextStyle(
    //                                 fontFamily: "Poppins",
    //                                 fontSize: 13,
    //                                 fontWeight: FontWeight.w600,
    //                                 color: Color(0xff0077AC),
    //                               ),
    //                             ),
    //                             Text(
    //                               "${offer[index]['discount']}",
    //                               style: TextStyle(
    //                                 fontFamily: "Poppins",
    //                                 fontSize: 21,
    //                                 fontWeight: FontWeight.w600,
    //                                 color: Color(0xff05073C),
    //                               ),
    //                             ),
    //                             Text(
    //                               "${offer[index]['description']}",
    //                               style: TextStyle(
    //                                 fontFamily: "Poppins",
    //                                 fontSize: 9,
    //                                 fontWeight: FontWeight.w500,
    //                                 color: Color(0xff100C08),
    //                               ),
    //                             ),
    //                             Container(
    //                               margin: EdgeInsets.only(top: 8.19),
    //                               width: 111.11,
    //                               height: 33.33,
    //                               decoration: BoxDecoration(
    //                                 color: Colors.white,
    //                                 borderRadius: BorderRadius.circular(40),
    //                               ),
    //                               child: Padding(
    //                                 padding: const EdgeInsets.only(
    //                                   left: 12.35,
    //                                   right: 4.44,
    //                                 ),
    //                                 child: Row(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       "Know More",
    //                                       style: TextStyle(
    //                                         fontFamily: "Poppins",
    //                                         fontSize: 10,
    //                                         fontWeight: FontWeight.w500,
    //                                         color: Color(0xff05073C),
    //                                       ),
    //                                     ),
    //                                     Container(
    //                                       height: 24.44,
    //                                       width: 24.44,
    //                                       decoration: BoxDecoration(
    //                                         color: Color(0xff16CE92),
    //                                         borderRadius:
    //                                             BorderRadius.circular(50),
    //                                       ),
    //                                       child: Icon(
    //                                         Icons.arrow_right_alt_outlined,
    //                                         color: Colors.white,
    //                                         size: 12,
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //                       Container(
    //                         height: 200,
    //                         width: 170,
    //                         decoration: BoxDecoration(
    //                           image: DecorationImage(
    //                             image: AssetImage("${offer[index]['image']}"),
    //                             fit: BoxFit.fill,
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),

    //                   Positioned(
    //                     bottom: 0,
    //                     left: 0,
    //                     right: 0,
    //                     child: Center(
    //                       child: Container(
    //                         width: 125,
    //                         height: 95,
    //                         decoration: BoxDecoration(
    //                           image: DecorationImage(
    //                             image: AssetImage(
    //                               "${offer[index]['carImage']}",
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             );
    //           },
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
    //);
  }
}
