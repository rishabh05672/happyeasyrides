import 'package:flutter/material.dart';
import 'package:happyeasyrides/common/color_extension.dart';
import 'package:happyeasyrides/screens/notification_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  List arrWhyhappyeasy = [
    {"image": "assets/img/pic_247.png", "title": "24 x 7 Customer\n Support"},
    {
      "image": "assets/img/car_whyHome.png",
      "title": "Free Delivery On \n Booking Over 72hrs.",
    },
    {"image": "assets/img/pic_247.png", "title": "Clean & Sanitizied \n Cars."},
    {"image": "assets/img/car_whyHome.png", "title": "Easy Booking Experience"},
  ];

  List arrOffers = [
    {"image": "assets/img/offers_home.png"},
    {"image": "assets/img/offers_home.png"},
  ];

  List arrTestimonial = [
    {
      "name": "Himani Sing",
      "testimonial":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the when an unknown printer took galley of type and scrambled to make specimen book.",
    },
    {
      "name": "Himani Sing",
      "testimonial":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the when an unknown printer took galley of type and scrambled to make specimen book.",
    },
    {
      "name": "Himani Sing",
      "testimonial":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the when an unknown printer took galley of type and scrambled to make specimen book.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      backgroundColor: TColor.primaryGradient[0],

      //AppBar
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        flexibleSpace: Image.asset(
          'assets/img/greentop_coupons.png',
          height: 130,
          fit: BoxFit.fill,
        ),
        //
        // Container(
        //   width: width,
        //   height: height * 0.12,
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage("assets/img/greentop_coupons.png"),
        //       fit: BoxFit.fill,

        //     ),
        //   ),
        // ),
        title: Padding(
          padding: const EdgeInsets.only(left: 19, bottom: 27),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 15.29,
                    //MediaQuery.of(context).size.width * 0.03,
                    height: 19.07,
                    //MediaQuery.of(context).size.height * 0.01,
                    child: //Icon(Icons.location_on, color: Color(0xffFFC641)),
                        Image.asset(
                      "assets/img/home_location_pic.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 7),
                  Text(
                    "Enter your location",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 25),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
              child: Image.asset(
                "assets/img/notification_icon.png",
                width: MediaQuery.of(context).size.width * 0.09,
                height: MediaQuery.of(context).size.height * 0.04,
              ),
            ),
          ),
        ],
      ),

      //Body
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.02),
                Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Book Your Self-Drive Car\nRental Now",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Container(
                  width: width * 0.18,
                  height: 1,
                  decoration: BoxDecoration(color: Color(0xffFFC641)),
                ),
                SizedBox(height: 10),
                Text(
                  "Select The City & Date Now",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),

                SizedBox(height: height * 0.11),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      // width: width,
                      // height: height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        color: Color(0xffF8F8FB),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: height * 0.17),
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
                                    img: arrWhyhappyeasy[0]['image'],
                                    text: arrWhyhappyeasy[0]['title'],
                                  ),
                                  whyHappyeasyRides(
                                    img: arrWhyhappyeasy[1]['image'],
                                    text: arrWhyhappyeasy[1]['title'],
                                  ),
                                  whyHappyeasyRides(
                                    img: arrWhyhappyeasy[2]['image'],
                                    text: arrWhyhappyeasy[2]['title'],
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
                                      Text(
                                        "View more",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff16CE92),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Row(
                                      children: [
                                        ...List.generate(arrOffers.length, (
                                          index,
                                        ) {
                                          return offersAtViewMore(
                                            image: arrOffers[index]["image"],
                                          );
                                        }),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
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
                                ...List.generate(arrTestimonial.length, (
                                  index,
                                ) {
                                  return Container(
                                    margin: EdgeInsets.only(left: 20),
                                    width: width * 0.67,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 1,
                                        color: Color(0xffE0F1F0),
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 20,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            arrTestimonial[index]["name"],
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff3B4051),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            arrTestimonial[index]["testimonial"],
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff515F65),
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                width: 2,
                                                color: Color(
                                                  0xff16CE92,
                                                  // ignore: deprecated_member_use
                                                ).withOpacity(0.1),
                                              ),
                                            ),
                                            child: Container(
                                              width: 36,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff05073C),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),

                          // SingleChildScrollView(
                          //   scrollDirection: Axis.horizontal,
                          //   child: Row(
                          //     children: List.generate(arrWhyhappyeasy.length, (
                          //       index,
                          //     ) {
                          //       return Container(
                          //         width: width * 0.37,
                          //         height: height * 0.1125,
                          //         decoration: BoxDecoration(
                          //           color: Color(0xff22D6D1),
                          //           borderRadius: BorderRadius.circular(20),
                          //         ),
                          //         child: Column(
                          //           children: [
                          //             Container(
                          //               width: width * 0.15,
                          //               height: height * 0.04,
                          //               decoration: BoxDecoration(
                          //                 shape: BoxShape.circle,
                          //                 color: Colors.white,
                          //               ),
                          //               child: Center(
                          //                 child: Image.asset(
                          //                   arrWhyhappyeasy[index]["image"],
                          //                   width: width * 0.09,
                          //                   height: height * 0.02,
                          //                   fit: BoxFit.contain,
                          //                 ),
                          //               ),
                          //             ),
                          //             Padding(
                          //               padding: EdgeInsets.symmetric(
                          //                 horizontal: size.width * 0.03,
                          //                 vertical: size.height * 0.009,
                          //               ),
                          //               child: Text(
                          //                 arrWhyhappyeasy[index]['title'],
                          //                 style: TextStyle(
                          //                   fontSize: 14,
                          //                   fontWeight: FontWeight.w600,
                          //                   color: Color(0xff100C08),
                          //                 ),
                          //               ),
                          //             ),
                          //           ],
                          //         ),
                          //       );
                          //     }),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: size.height * 0.19,
            left: 20,
            right: 20,
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
                      controller: _searchController,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: SizedBox(
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
                                  image: AssetImage("assets/img/car_home.png"),
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
                          borderSide: BorderSide(color: Color(0xffE7EBF5)),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: size.height * 0.06,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff0077AC),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.search, color: Colors.white, size: 18),
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
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget whyHappyeasyRides({required String img, required String text}) {
    Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Container(
      margin: EdgeInsets.only(right: 10),
      // width: width * 0.37,
      //  height: height * 0.1125,
      decoration: BoxDecoration(
        color: Color(0xff22D6D1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            width: width * 0.15,
            height: height * 0.04,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: Image.asset(
                img,
                width: width * 0.09,
                height: height * 0.02,
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
    );
  }

  Widget offersAtViewMore({required String image}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(image, width: 360, height: 181, fit: BoxFit.fill),
    );
  }
}
