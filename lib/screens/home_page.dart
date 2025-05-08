import 'package:flutter/material.dart';
import 'package:happyeasyrides/common/color_extension.dart';
import 'package:happyeasyrides/screens/notification_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          width: width,
          height: height * 0.12,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/greentop_coupons.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 15, left: 19, bottom: 27),
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
                children: [
                  Container(
                    width: 15,
                    height: 19,
                    child: Icon(Icons.location_on, color: Color(0xffFFC641)),
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
            padding: const EdgeInsets.only(right: 20, bottom: 33),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
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

      //Body
      body: SingleChildScrollView(
        child: Container(
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
              SizedBox(height: height * 0.06),
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xffF8F8FB),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.06),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  ...List.generate(arrOffers.length, (index) {
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
            ],
          ),
        ),
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
