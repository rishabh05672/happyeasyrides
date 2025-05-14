// ignore_for_file: sized_box_for_whitespace

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:happyeasyrides/provider/home_page_provider.dart';
import 'package:happyeasyrides/provider/select_city.dart';
import 'package:happyeasyrides/screens/coupons.dart';
import 'package:happyeasyrides/screens/notification_screen.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int whyHappyEasy = -1;
  // DateTime? selectStartDate;
  // DateTime? selectEndDate;
  // TimeOfDay? selectStartTime;
  // TimeOfDay? selectEndTime;
  bool isCitySelected = false;
  int currentOfferIndex = 0;

  // Future<void> _selectedStartDate(BuildContext context) async {
  //   final DateTime? startpicked = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime.now(),
  //     lastDate: DateTime.now().add(Duration(days: 365)),
  //   );

  //   if (startpicked != null) {
  //     setState(() {
  //       selectStartDate = startpicked;
  //     });
  //   }
  // }

  // Future<void> _selectedEndDate(BuildContext context) async {
  //   final DateTime? endpicked = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime.now(),
  //     lastDate: DateTime.now().add(Duration(days: 365)),
  //   );

  //   if (endpicked != null) {
  //     setState(() {
  //       selectEndDate = endpicked;
  //     });
  //   }
  // }

  // Future<void> _selectedStartTime(BuildContext context) async {
  //   final TimeOfDay? startTime = await showTimePicker(
  //     context: context,
  //     initialTime: TimeOfDay.now(),
  //   );
  //   if (startTime != null) {
  //     setState(() {
  //       selectStartTime = startTime;
  //     });
  //   }
  // }

  // Future<void> _selectedEndTime(BuildContext context) async {
  //   final TimeOfDay? endTime = await showTimePicker(
  //     context: context,
  //     initialTime: TimeOfDay.now(),
  //   );

  //   if (endTime != null) {
  //     selectEndTime = endTime;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context);
    // ignore: unused_local_variable
    final selectCityProvider = Provider.of<SelectCityProvider>(
      context,
      listen: false,
    );
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff15CF92), Color(0xff047EAA)],
              ),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/img/greentop_coupons.png",
                      height: height * 0.13,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 37,
                        right: 20,
                        left: 19,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    width: width,
                                    //height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 30,
                                        bottom: 50,
                                        right: 20,
                                        left: 20,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.location_searching_outlined,
                                            color: Color(0xff15CF92),
                                            size: 24,
                                          ),
                                          SizedBox(width: 10),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              border: Border.all(
                                                color: Color(0xff15CF92),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                15.0,
                                              ),
                                              child: Text(
                                                "Select the location",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xff15CF92),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Happyeasy Rides Rental",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 27),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/img/home_location_pic.png",
                                        width: 15.29,
                                        height: 19.07,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "Enter your location",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
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
                        ],
                      ),
                    ),
                  ],
                ),

                //---------------------MAIN COLUMN----------------------------------
                Expanded(
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 31),
                            Text(
                              textAlign: TextAlign.center,
                              "Book Your Self-Drive Car\nRental Now",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Container(
                              width: width * 0.18,
                              height: 1,
                              decoration: BoxDecoration(
                                color: Color(0xffFFC641),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Select The City & Date Now",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: height * 0.11),
                            Container(
                              padding: EdgeInsets.only(top: size.height * 0.02),
                              width: width,
                              decoration: BoxDecoration(
                                // border: Border.all(width: 1, color: Color(0xffE0F1F0)),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Color(0xffe0f1f0),
                                //     blurRadius: 6,
                                //     offset: Offset(0, 6),
                                //   ),
                                // ],
                                color: Color(0xffF8F8FB),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: size.height * 0.14),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Why Happyeasy Rides",
                                      style: TextStyle(
                                        color: Color(0xff100C08),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 13),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          whyHappyeasyRides(
                                            index: 0,
                                            img:
                                                provider
                                                    .arrWhyhappyeasy[0]['image'] ??
                                                "",
                                            text:
                                                provider
                                                    .arrWhyhappyeasy[0]['title'] ??
                                                "",
                                          ),
                                          whyHappyeasyRides(
                                            index: 1,
                                            img:
                                                provider
                                                    .arrWhyhappyeasy[1]['image'] ??
                                                "",
                                            text:
                                                provider
                                                    .arrWhyhappyeasy[1]['title'] ??
                                                "",
                                          ),
                                          whyHappyeasyRides(
                                            index: 2,
                                            img:
                                                provider
                                                    .arrWhyhappyeasy[2]['image'] ??
                                                "",
                                            text:
                                                provider
                                                    .arrWhyhappyeasy[2]['title'] ??
                                                "",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 25,
                                            right: 20,
                                            bottom: 15,
                                            left: 20,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Offers At Happyeasy Rides",
                                                style: TextStyle(
                                                  color: Color(0xff100C08),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                              Coupons(),
                                                    ),
                                                  );
                                                },
                                                child: Text(
                                                  "View more",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    color: Color(0xff16CE92),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        CarouselSlider(
                                          options: CarouselOptions(
                                            height: height * 0.18,

                                            enableInfiniteScroll: true,
                                            enlargeCenterPage: false,
                                            autoPlay: true,
                                            onPageChanged: (index, context) {
                                              setState(() {
                                                currentOfferIndex = index;
                                              });
                                            },
                                          ),
                                          items:
                                              provider.arrOffer.map<Widget>((
                                                offer,
                                              ) {
                                                return Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                    child: Image.asset(
                                                      offer["image"] ?? "",
                                                      width: width * 0.81,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                        ),

                                        SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: List.generate(
                                            provider.arrOffer.length,
                                            (index) {
                                              return AnimatedContainer(
                                                duration: const Duration(
                                                  milliseconds: 300,
                                                ),
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 4,
                                                    ),
                                                height: 8,
                                                width:
                                                    currentOfferIndex == index
                                                        ? 25
                                                        : 8,
                                                decoration: BoxDecoration(
                                                  color:
                                                      currentOfferIndex == index
                                                          ? const Color(
                                                            0xff0077AC,
                                                          )
                                                          : const Color(
                                                            0xffadd3e4,
                                                          ),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                              );
                                            },
                                          ),
                                        ),

                                        SizedBox(height: 20),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Offers At Happyeasy Rides",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff100C08),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 13.5),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        ...List.generate(
                                          provider.arrTestimonial.length,
                                          (index) {
                                            return Stack(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    left: 20,
                                                  ),
                                                  width: width * 0.67,
                                                  decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color(
                                                          0xffe0f1f0,
                                                        ),
                                                        blurRadius: 6,
                                                        offset: Offset(0, 3),
                                                      ),
                                                    ],
                                                    color: Colors.white,
                                                    border: Border.all(
                                                      width: 1,
                                                      color: Color(0xffE0F1F0),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 20,
                                                          vertical: 20,
                                                        ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          provider.arrTestimonial[index]["name"] ??
                                                              "",
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Color(
                                                              0xff3B4051,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 5),
                                                        Text(
                                                          provider.arrTestimonial[index]["testimonial"] ??
                                                              "",
                                                          style: TextStyle(
                                                            fontSize: 10,
                                                            color: Color(
                                                              0xff515F65,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 4),
                                                        Container(
                                                          width: 40,
                                                          height: 40,
                                                          decoration:
                                                              BoxDecoration(
                                                                shape:
                                                                    BoxShape
                                                                        .circle,
                                                                border: Border.all(
                                                                  width: 2,
                                                                  color: Color(
                                                                    0xff16CE92,
                                                                  ).withOpacity(
                                                                    0.1,
                                                                  ),
                                                                ),
                                                              ),
                                                          child: Container(
                                                            width: 36,
                                                            height: 36,
                                                            decoration:
                                                                BoxDecoration(
                                                                  shape:
                                                                      BoxShape
                                                                          .circle,
                                                                  color: Color(
                                                                    0xff05073C,
                                                                  ),
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 11.59,
                                                  right: 11.5,
                                                  child: Image.asset(
                                                    "assets/img/cmnt_icon.png",
                                                    width: 28,
                                                    height: 28.01,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                        SizedBox(width: 12),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 29.5),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: size.height * 0.18,
                          right: 20,
                          left: 20,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 31,
                                    right: 19,
                                    left: 19,
                                    bottom: 20,
                                  ),
                                  child: TextField(
                                    onTap:
                                        () => provider.showCitySelectionDialog(
                                          context,
                                        ),
                                    readOnly: true,
                                    onTapOutside:
                                        (_) => FocusScope.of(context).unfocus(),
                                    controller: provider.searchController,
                                    decoration: InputDecoration(
                                      suffixIcon: SizedBox(
                                        width: 11.42,
                                        height: 5.22,
                                        child: Center(
                                          child: Container(
                                            width: 11.42,
                                            height: 5.22,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/img/arrow_down.png",
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      prefixIcon: SizedBox(
                                        width: 24.02,
                                        height: 24.02,
                                        child: Center(
                                          child: Container(
                                            width: 24.02,
                                            height: 24.02,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/img/car_home.png",
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      labelText: "Search city to search",
                                      labelStyle: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff6E7FAA),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xffE7EBF5),
                                        ),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xffe7ebf5),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xffe7ebf5),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                    ),
                                  ),
                                ),
                                if (provider.isCitySelected)
                                  //=====================start date=========================
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 10,
                                      right: 20,
                                      left: 20,
                                      bottom: 10,
                                    ),
                                    child: GestureDetector(
                                      onTap:
                                          () => provider.selectedStartDate(
                                            context,
                                          ),
                                      child: Container(
                                        width: size.width * 0.8,
                                        height: size.height * 0.06,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xffe7ebf5),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xffe7ebf5),
                                              offset: Offset(0, 1),
                                              spreadRadius: .5,
                                            ),
                                          ],
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            40,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            provider.selectStartDate != null
                                                ? "${provider.selectStartDate!.day}/${provider.selectStartDate!.month}/${provider.selectStartDate!.year}"
                                                : "Select Start Date",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff6E7FAA),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                //=========================Start Time======================
                                if (provider.selectStartDate != null)
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                      bottom: 10,
                                    ),
                                    child: GestureDetector(
                                      onTap:
                                          () => provider.selectedStartTime(
                                            context,
                                          ),
                                      child: Container(
                                        width: size.width * 0.8,
                                        height: size.height * 0.06,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xffe7ebf5),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xffe7ebf5),
                                              offset: Offset(0, 1),
                                              spreadRadius: .5,
                                            ),
                                          ],
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            40,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            provider.selectStartTime != null
                                                ? "${provider.selectStartTime!.hour}:${provider.selectStartTime!.minute.toString()}"
                                                : "Select Start Time",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff6E7FAA),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                //=====================end date=========================
                                if (provider.selectStartTime != null)
                                  Padding(
                                    padding: EdgeInsets.only(
                                      //top: 10,
                                      right: 20,
                                      left: 20,
                                      bottom: 10,
                                    ),
                                    child: GestureDetector(
                                      onTap:
                                          () =>
                                              provider.selectedEndDate(context),
                                      child: Container(
                                        width: size.width * 0.8,
                                        height: size.height * 0.06,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xffe7ebf5),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xffe7ebf5),
                                              offset: Offset(0, 1),
                                              spreadRadius: .5,
                                            ),
                                          ],
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            40,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            provider.selectEndDate != null
                                                ? "${provider.selectEndDate!.day}/${provider.selectEndDate!.month}/${provider.selectEndDate!.year}"
                                                : "Select End Time",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff6E7FAA),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                //===================End Time====================
                                if (provider.selectEndDate != null)
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                      bottom: 10,
                                    ),
                                    child: GestureDetector(
                                      onTap:
                                          () =>
                                              provider.selectedEndTime(context),
                                      child: Container(
                                        width: size.width * 0.8,
                                        height: size.height * 0.06,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xffe7ebf5),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xffe7ebf5),
                                              offset: Offset(0, 1),
                                              spreadRadius: .5,
                                            ),
                                          ],
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            40,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            provider.selectEndTime != null
                                                ? "${provider.selectEndTime!.hour}:${provider.selectEndTime!.minute.toString()}"
                                                : "Select End Time",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff6E7FAA),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                //==================Elevated Button=========================
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: SizedBox(
                                    height: size.height * 0.06,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (provider.isCitySelected &&
                                            provider.selectStartDate != null &&
                                            provider.selectStartTime != null &&
                                            provider.selectEndDate != null &&
                                            provider.selectEndTime != null) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Coupons(),
                                            ),
                                          );
                                        } else {
                                          // ScaffoldMessenger.of(
                                          //   context,
                                          // ).showSnackBar(
                                          //   SnackBar(
                                          //     content: Text(
                                          //       "Please select the city date and time",
                                          //       style: TextStyle(
                                          //         fontSize: 16,
                                          //         color: Colors.white,
                                          //       ),
                                          //     ),
                                          //     backgroundColor: Color(
                                          //       0xff0077AC,
                                          //     ),
                                          //   ),
                                          // );
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff0077AC),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.search,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                          SizedBox(width: 6.72),
                                          Text(
                                            "Find Car Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 31),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget whyHappyeasyRides({
    required String img,
    required String text,
    required int index,
  }) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        whyHappyEasy = index;
        setState(() {});
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffE0F1F0)),
          boxShadow: [
            BoxShadow(
              color: Color(0xffe0f1f0),
              blurRadius: 6,
              //offset: Offset(0, 2),
            ),
          ],
          color: whyHappyEasy == index ? Color(0xff22D6D1) : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              width: size.width * 0.15,
              height: size.height * 0.04,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: whyHappyEasy == index ? Colors.white : Color(0xffd8fffe),
              ),
              child: Center(
                child: Image.asset(
                  img,
                  width: size.width * 0.09,
                  height: size.height * 0.02,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 14),
            Padding(
              padding: EdgeInsets.only(right: 24, left: 24, bottom: 19),
              child: Text(
                textAlign: TextAlign.center,
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff100C08),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
