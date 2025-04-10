import 'package:flutter/material.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({super.key});

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15CF92),
      body: Column(
        children: [
          // AppBar with Image
          Stack(
            children: [
              Image.asset(
                "assets/img/greentop_coupons.png",
                fit: BoxFit.cover,
                width: double.infinity,
                height: 116,
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 40.0,
                  bottom: 34,
                  left: 20.5,
                  right: 20.5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Back button
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_outlined,
                        size: 21,
                        color: Colors.white,
                      ),
                    ),

                    //Text
                    Text(
                      "Coupons",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),

                    // Notification Button
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_outlined,
                        size: 21,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // white background container
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              //White background container column
              child: Column(
                children: [
                  //1st Container of white Container
                  Container(
                    margin: EdgeInsets.only(top: 12.47, left: 20, right: 20),
                    width: 400,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/img/Clip path group.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    //1st Container Row
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 36.0,
                                left: 23,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "5 Days Rental Package",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      color: Color(0xff0077AC),
                                    ),
                                  ),
                                  Text(
                                    "15% Flat of",
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Poppins",
                                      color: Color(0xff05073C),
                                    ),
                                  ),
                                  Text(
                                    'On all bookings of 5 Days & more',
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 9,
                                    ),
                                  ),
                                  Container(
                                    height: 33.33,
                                    width: 111.11,
                                    margin: EdgeInsets.only(top: 8.19),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Know More",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Poppins",
                                            color: Color(0xff05073C),
                                          ),
                                        ),
                                        Container(
                                          height: 24.44,
                                          width: 24.44,
                                          decoration: BoxDecoration(
                                            color: Color(0xff16CE92),
                                            borderRadius: BorderRadius.circular(
                                              50,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.arrow_right_alt_outlined,
                                            color: Colors.white,
                                            size: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //Image Container
                            Container(
                              height: 200.93,
                              width: 183.32,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/img/firstpic_coupon.png",
                                  ),

                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Bottom Car Image
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,

                            children: [
                              Image.asset(
                                "assets/img/carfirstpic_coupon.png",
                                height: 56.32,
                                width: 123.24,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // 2nd Container of white Container
                  Container(
                    margin: EdgeInsets.only(top: 12.47, left: 20, right: 20),
                    width: 400,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/img/Mask Group 190.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    //2nd Container Row
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 36.0,
                                left: 23,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "5 Days Rental Package",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      color: Color(0xff0077AC),
                                    ),
                                  ),
                                  Text(
                                    "15% Flat of",
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Poppins",
                                      color: Color(0xff05073C),
                                    ),
                                  ),
                                  Text(
                                    'On all bookings of 5 Days & more',
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 9,
                                    ),
                                  ),
                                  Container(
                                    height: 33.33,
                                    width: 111.11,
                                    margin: EdgeInsets.only(top: 8.19),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Know More",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Poppins",
                                            color: Color(0xff05073C),
                                          ),
                                        ),
                                        Container(
                                          height: 24.44,
                                          width: 24.44,
                                          decoration: BoxDecoration(
                                            color: Color(0xff16CE92),
                                            borderRadius: BorderRadius.circular(
                                              50,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.arrow_right_alt_outlined,
                                            color: Colors.white,
                                            size: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //Image Container
                            Container(
                              height: 200,
                              width: 161,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/img/secondpic_coupon.png",
                                  ),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Bottom Car Image
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,

                            children: [
                              Image.asset(
                                "assets/img/secondcar_coupon.png",
                                height: 118.97,
                                width: 130,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // 3rd Container of white Container
                  Container(
                    margin: EdgeInsets.only(top: 12.47, left: 20, right: 20),
                    width: 400,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/img/Mask Group 192.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    //3rd Container Row
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 36.0,
                                left: 23,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "5 Days Rental Package",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      color: Color(0xff0077AC),
                                    ),
                                  ),
                                  Text(
                                    "15% Flat of",
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Poppins",
                                      color: Color(0xff05073C),
                                    ),
                                  ),
                                  Text(
                                    'On all bookings of 5 Days & more',
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 9,
                                    ),
                                  ),
                                  Container(
                                    height: 33.33,
                                    width: 111.11,
                                    margin: EdgeInsets.only(top: 8.19),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Know More",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Poppins",
                                            color: Color(0xff05073C),
                                          ),
                                        ),
                                        Container(
                                          height: 24.44,
                                          width: 24.44,
                                          decoration: BoxDecoration(
                                            color: Color(0xff16CE92),
                                            borderRadius: BorderRadius.circular(
                                              50,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.arrow_right_alt_outlined,
                                            color: Colors.white,
                                            size: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //Image Container
                            Container(
                              height: 200,
                              width: 169,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/img/thirdpic_coupon.png",
                                  ),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Bottom Car Image
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,

                            children: [
                              Image.asset(
                                "assets/img/carthirdpic_coupon.png",
                                height: 92.78,
                                width: 128.45,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),

        onPressed: () {},
        backgroundColor: Color(0xff0077AC),
        child: Image.asset(
          "assets/img/carfabbutton.png",
          width: 25.07,
          height: 24.18,
          fit: BoxFit.fill,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 81.0,
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              icon: Column(
                children: [
                  Image.asset(
                    "assets/img/home_icon.png",
                    width: 24.03,
                    height: 23.99,
                    color: selectedIndex == 0 ? Color(0xff16CE92) : null,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      color:
                          selectedIndex == 0
                              ? Color(0xff16ce92)
                              : Color(0xff686E82),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              icon: Column(
                children: [
                  Image.asset(
                    "assets/img/myBooking_icon.png",
                    width: 24.03,
                    height: 23.99,
                    color: selectedIndex == 1 ? Color(0xff16ce92) : null,
                  ),
                  Text(
                    "My Booking",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      color:
                          selectedIndex == 1
                              ? Color(0xff16ce92)
                              : Color(0xff686E82),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CouponsScreen()),
                  );
                });
              },
              icon: Column(
                children: [
                  Image.asset(
                    "assets/img/offer_icon.png",
                    width: 24.03,
                    height: 23.99,
                    color: selectedIndex == 2 ? Color(0xff16ce92) : null,
                  ),
                  Text(
                    "Offers",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      color:
                          selectedIndex == 2
                              ? Color(0xff16ce92)
                              : Color(0xff686E82),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              icon: Column(
                children: [
                  Image.asset(
                    "assets/img/profile_icon.png",
                    width: 24.03,
                    height: 23.99,
                    color: selectedIndex == 3 ? Color(0xff16ce92) : null,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      color:
                          selectedIndex == 3
                              ? Color(0xff16ce92)
                              : Color(0xff686E82),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
