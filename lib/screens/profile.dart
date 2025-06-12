// ignore_for_file: avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:happyeasyrides/common/custom_bottom_navigation.dart';
import 'package:happyeasyrides/provider/login_provider.dart';
import 'package:happyeasyrides/provider/profile_provider.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int? selectedIndex;

  List arrProfile = [
    {"image": "assets/img/first_splash11.png", "name": "Booking History"},
    {"image": "assets/img/second_splash11.png", "name": "Manage Documents"},
    {"image": "assets/img/third_splash11.png", "name": "Profile Verification"},
    {"image": "assets/img/fourth_splash11.png", "name": "Terms & Conditions"},
    {"image": "assets/img/fifth_splash11.png", "name": "Privacy Policy"},
    {
      "image": "assets/img/sixth_splash11.png",
      "name": "Cancellation & Refund Policy",
    },
    {"image": "assets/img/seventh_splash11.png", "name": "Support & Contact"},
    {"image": "assets/img/eighth_splash11.png", "name": "Log Out"},
  ];

  @override
  Widget build(BuildContext context) {
    String phoneNumber = Provider.of<LoginProvider>(context).phoneNumber;
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
                    top: size.height * 0.05,
                    left: 20.5,
                    right: 20.5,
                  ),
                  child: Row(
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
                      SizedBox(width: width * 0.24),
                      Text(
                        "MY PROFILE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff094e49).withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/img/myprofile_edit_icon.png",
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Consumer<ProfileProvider>(
              builder: (context, ProfileProvider, child) {
                return Stack(
                  children: [
                    Container(
                      width: width * 0.23,
                      height: height * 0.106,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 4, color: Color(0xff094c57)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child:
                            ProfileProvider.image != null
                                ? Image.file(
                                  ProfileProvider.image!,
                                  fit: BoxFit.fill,
                                  width: width * 0.23,
                                  height: height * 0.106,
                                )
                                : Image.asset(
                                  "assets/img/boy_avatar.png",
                                  fit: BoxFit.fill,
                                ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 3,
                      child: GestureDetector(
                        onTap: () {
                          //pick image
                          ProfileProvider.pickImage();
                        },
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffFFC234),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/img/profile_pic_edit.png",
                              width: 14,
                              height: 11.9,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 7),
            Text(
              "Lorem Ipsum",
              style: TextStyle(
                fontSize: 22,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: size.width * 0.23,
                right: size.width * 0.23,
                top: 4,
              ),
              padding: const EdgeInsets.only(top: 12, bottom: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color(0xff6bbfb6),
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 33.01),
                    child: Image.asset(
                      "assets/img/phone_profile.png",
                      width: 15,
                      height: 23,
                      color: Color(0xff05073C),
                    ),
                  ),
                  SizedBox(width: 4.94),
                  Text(
                    // ignore: unnecessary_string_interpolations
                    "$phoneNumber",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      color: Color(0xff05073C),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Flexible(
              child: Container(
                //margin: EdgeInsets.only(top: 42),
                //padding: EdgeInsets.only(top: 34),
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xfff8f8fb),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),

                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 34),
                      Consumer<ProfileProvider>(
                        builder: (context, value, child) {
                          return Column(
                            children: List.generate(arrProfile.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  selectedIndex = index;
                                  setState(() {});
                                },
                                child: Container(
                                  width: width,
                                  margin: EdgeInsets.only(
                                    top: 10,
                                    left: 20,
                                    right: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      width: 1,
                                      color:
                                          selectedIndex == index
                                              ? Color(0xff16CE92)
                                              : Colors.white,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      bottom: 10,
                                      left: 13,
                                      right: 26,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: width * 0.12,
                                          height: 48,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            color:
                                                selectedIndex == index
                                                    ? Color(0xff16ce92)
                                                    : Color(0xffdbfff3),
                                          ),
                                          child: Center(
                                            child: Container(
                                              width: 32,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                color: Color(0xff16CE92),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: Center(
                                                child: Image.asset(
                                                  arrProfile[index]["image"],
                                                  width: 18,
                                                  height: 18,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 13),
                                        Text(
                                          arrProfile[index]["name"],
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Poppins",
                                            color: Color(0xff100C08),
                                          ),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 14,
                                          color:
                                              selectedIndex == index
                                                  ? Color(0xff16ce92)
                                                  : Color(0xffb4b7c1),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                      // ListView.builder(
                      //   itemCount: arrProfile.length,
                      //   itemBuilder: (context, index) {
                      //     return GestureDetector(
                      //       onTap: () {
                      //         selectedIndex = index;
                      //         setState(() {});
                      //       },
                      //       child: Container(
                      //         width: double.infinity,
                      //         margin: EdgeInsets.only(
                      //           top: 10,
                      //           left: 20,
                      //           right: 20,
                      //         ),
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(20),
                      //           border: Border.all(
                      //             width: 1,
                      //             color:
                      //                 selectedIndex == index
                      //                     ? Color(0xff16CE92)
                      //                     : Colors.grey,
                      //           ),
                      //         ),
                      //         child: Padding(
                      //           padding: const EdgeInsets.only(
                      //             top: 10,
                      //             bottom: 10,
                      //             left: 13,
                      //             right: 26,
                      //           ),
                      //           child: Row(
                      //             children: [
                      //               Container(
                      //                 width: width * 0.12,
                      //                 height: 48,
                      //                 decoration: BoxDecoration(
                      //                   borderRadius: BorderRadius.circular(10),
                      //                   color:
                      //                       selectedIndex == index
                      //                           ? Color(0xff16ce92)
                      //                           : Color(0xffdbfff3),
                      //                 ),
                      //                 child: Center(
                      //                   child: Container(
                      //                     width: 32,
                      //                     height: 32,
                      //                     decoration: BoxDecoration(
                      //                       color: Color(0xff16CE92),
                      //                       borderRadius: BorderRadius.circular(
                      //                         100,
                      //                       ),
                      //                     ),
                      //                     child: Center(
                      //                       child: Image.asset(
                      //                         arrProfile[index]["image"],
                      //                         width: 18,
                      //                         height: 18,
                      //                         fit: BoxFit.contain,
                      //                       ),
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ),
                      //               const SizedBox(width: 13),
                      //               Text(
                      //                 arrProfile[index]["name"],
                      //                 style: TextStyle(
                      //                   fontSize: 14,
                      //                   fontWeight: FontWeight.w500,
                      //                   fontFamily: "Poppins",
                      //                   color: Color(0xff100C08),
                      //                 ),
                      //               ),
                      //               Spacer(),
                      //               Icon(
                      //                 Icons.arrow_forward_ios,
                      //                 size: 14,
                      //                 color:
                      //                     selectedIndex == index
                      //                         ? Color(0xff16ce92)
                      //                         : Color(0xffb4b7c1),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //     );
                      //   },
                      // ),
                      SizedBox(height: size.height * 0.06),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        height: 65,
                        width: width,
                        decoration: BoxDecoration(
                          color: Color(0xff121826),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/img/support_icon.png",
                              width: 28,
                              height: 27,
                            ),
                            SizedBox(width: 8.69),
                            Text(
                              "How Can We Help You?",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffF9F9F9),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 35),
                    ],
                  ),
                ),
              ),
            ),
            // SizedBox(height: size.height * 0.06),
          ],
        ),
      ),
    );

    //--------------------------------------------------------------------------------------
    // Stack(
    //   children: [
    //     Container(
    //       decoration: BoxDecoration(
    //         gradient: LinearGradient(
    //           colors: [Color(0xff15CF92), Color(0xff047EAA)],
    //         ),
    //       ),
    //     ),
    //     Image.asset("assets/img/profile_bg.png"),
    //     Scaffold(
    //       backgroundColor: Colors.transparent,
    //       appBar: AppBar(
    //         backgroundColor: Colors.transparent,
    //         flexibleSpace: Container(
    //           width: double.infinity,
    //           height: height * 0.16,
    //           decoration: BoxDecoration(
    //             image: DecorationImage(
    //               image: AssetImage("assets/img/greentop_coupons.png"),
    //               fit: BoxFit.fill,
    //             ),
    //           ),
    //         ),
    //         leading: Padding(
    //           padding: const EdgeInsets.only(bottom: 10.0),
    //           child: InkWell(
    //             onTap: () {
    //               Navigator.pop(context);
    //             },
    //             child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
    //           ),
    //         ),
    //         title: Padding(
    //           padding: const EdgeInsets.all(10.0),
    //           child: Text(
    //             "MY PROFILE",
    //             style: TextStyle(
    //               fontSize: 20,
    //               fontWeight: FontWeight.w600,
    //               fontFamily: "Poppins",
    //               color: Colors.white,
    //             ),
    //           ),
    //         ),
    //         centerTitle: true,
    //         actions: [
    //           Container(
    //             width: 30,
    //             height: 30,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(100),
    //             ),
    //             margin: EdgeInsets.only(right: 28, bottom: 8),
    //             child: Container(
    //               width: 20,
    //               height: 20,
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(10),
    //                 border: Border.all(width: 1, color: Colors.white),
    //               ),
    //               child: Icon(Icons.edit, color: Color(0xffffc641), size: 15),
    //             ),
    //           ),
    //         ],
    //       ),
    //       body: Stack(
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.only(top: 36),
    //             child: Column(
    //               children: [
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Container(
    //                       width: 102,
    //                       height: 102,
    //                       decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(100),
    //                         border: Border.all(
    //                           width: 4,
    //                           color: Color(0xff094c57),
    //                         ),
    //                       ),
    //                       child: Image.asset(
    //                         "assets/img/boy_avatar.png",
    //                         fit: BoxFit.fill,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //                 Text(
    //                   "Lorem Ipsum",
    //                   style: TextStyle(
    //                     fontSize: 22,
    //                     fontFamily: "Poppins",
    //                     fontWeight: FontWeight.w500,
    //                     color: Colors.white,
    //                   ),
    //                 ),
    //                 Container(
    //                   margin: EdgeInsets.only(left: 105, right: 105, top: 4),
    //                   decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(20),
    //                     color: Color(0xff6bbfb6),
    //                   ),
    //                   child: Padding(
    //                     padding: const EdgeInsets.only(top: 12, bottom: 8),
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: [
    //                         Image.asset(
    //                           "assets/img/phone_profile.png",
    //                           width: 15,
    //                           height: 23,
    //                           color: Color(0xff05073C),
    //                         ),
    //                         SizedBox(width: 4.94),
    //                         Text(
    //                           "$phoneNumber",
    //                           style: TextStyle(
    //                             fontSize: 18,
    //                             fontWeight: FontWeight.w500,
    //                             fontFamily: "Poppins",
    //                             color: Color(0xff05073C),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //                 Flexible(
    //                   child: Container(
    //                     margin: EdgeInsets.only(top: 42),
    //                     padding: EdgeInsets.only(top: 34),
    //                     width: width,
    //                     decoration: BoxDecoration(
    //                       color: Colors.white,
    //                       borderRadius: BorderRadius.only(
    //                         topLeft: Radius.circular(30),
    //                         topRight: Radius.circular(30),
    //                       ),
    //                     ),
    //                     child: ListView.builder(
    //                       itemCount: arrProfile.length,
    //                       itemBuilder: (context, index) {
    //                         return GestureDetector(
    //                           onTap: () {
    //                             selectedIndex = index;
    //                             setState(() {});
    //                           },
    //                           child: Container(
    //                             width: double.infinity,
    //                             margin: EdgeInsets.only(
    //                               top: 10,
    //                               left: 20,
    //                               right: 20,
    //                             ),
    //                             decoration: BoxDecoration(
    //                               borderRadius: BorderRadius.circular(20),
    //                               border: Border.all(
    //                                 width: 1,
    //                                 color:
    //                                     selectedIndex == index
    //                                         ? Color(0xff16CE92)
    //                                         : Colors.grey,
    //                               ),
    //                             ),
    //                             child: Padding(
    //                               padding: const EdgeInsets.only(
    //                                 top: 10,
    //                                 bottom: 10,
    //                                 left: 13,
    //                                 right: 26,
    //                               ),
    //                               child: Row(
    //                                 children: [
    //                                   Container(
    //                                     width: width * 0.12,
    //                                     height: 48,
    //                                     decoration: BoxDecoration(
    //                                       borderRadius: BorderRadius.circular(
    //                                         10,
    //                                       ),
    //                                       color:
    //                                           selectedIndex == index
    //                                               ? Color(0xff16ce92)
    //                                               : Color(0xffdbfff3),
    //                                     ),
    //                                     child: Center(
    //                                       child: Container(
    //                                         width: 32,
    //                                         height: 32,
    //                                         decoration: BoxDecoration(
    //                                           color: Color(0xff16CE92),
    //                                           borderRadius:
    //                                               BorderRadius.circular(100),
    //                                         ),
    //                                         child: Center(
    //                                           child: Image.asset(
    //                                             arrProfile[index]["image"],
    //                                             width: 18,
    //                                             height: 18,
    //                                             fit: BoxFit.contain,
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                   const SizedBox(width: 13),
    //                                   Text(
    //                                     arrProfile[index]["name"],
    //                                     style: TextStyle(
    //                                       fontSize: 14,
    //                                       fontWeight: FontWeight.w500,
    //                                       fontFamily: "Poppins",
    //                                       color: Color(0xff100C08),
    //                                     ),
    //                                   ),
    //                                   Spacer(),
    //                                   Icon(
    //                                     Icons.arrow_forward_ios,
    //                                     size: 14,
    //                                     color:
    //                                         selectedIndex == index
    //                                             ? Color(0xff16ce92)
    //                                             : Color(0xffb4b7c1),
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),
    //                           ),
    //                         );
    //                       },
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );

    //--------------------------------------------------------------------------------------
  }
}
