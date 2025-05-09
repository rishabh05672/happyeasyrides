import 'package:flutter/material.dart';
import 'package:happyeasyrides/screens/notification_screen.dart';

class Coupons extends StatefulWidget {
  const Coupons({super.key});

  @override
  State<Coupons> createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
  final List<Map<String, String>> offer = [
    {
      'backgroundImage': 'assets/img/Clip path group.png',
      'title': '5 Days Rental Package',
      'discount': '10% Flat Of',
      'description': 'On all bookings of 5 days & more',
      'image': 'assets/img/firstpic_coupon.png',
      'carImage': 'assets/img/carfirstpic_coupon.png',
    },
    {
      'backgroundImage': 'assets/img/Mask Group 190.png',
      'title': '5 Days Rental Package',
      'discount': '10% Flat Of',
      'description': 'On all bookings of 5 days & more',
      'image': 'assets/img/secondpic_coupon.png',
      'carImage': 'assets/img/secondcar_coupon.png',
    },
    {
      'backgroundImage': 'assets/img/Mask Group 192.png',
      'title': '5 Days Rental Package',
      'discount': '10% Flat Of',
      'description': 'On all bookings of 5 days & more',
      'image': 'assets/img/thirdpic_coupon.png',
      'carImage': 'assets/img/carthirdpic_coupon.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15CF92),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff15CF92),
        flexibleSpace: Container(
          width: double.infinity,
          height: 116,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/greentop_coupons.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: Text(
          "COUPONS",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_sharp, color: Colors.white, size: 21),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 20, bottom: 20),
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
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 34),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: ListView.builder(
                itemCount: offer.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 12,
                      bottom: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage("${offer[index]['backgroundImage']}"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 36.4,
                                left: 23,
                                bottom: 58.39,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${offer[index]['title']}",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff0077AC),
                                    ),
                                  ),
                                  Text(
                                    "${offer[index]['discount']}",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff05073C),
                                    ),
                                  ),
                                  Text(
                                    "${offer[index]['description']}",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 9,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff100C08),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 8.19),
                                    width: 111.11,
                                    height: 33.33,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 12.35,
                                        right: 4.44,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Know More",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff05073C),
                                            ),
                                          ),
                                          Container(
                                            height: 24.44,
                                            width: 24.44,
                                            decoration: BoxDecoration(
                                              color: Color(0xff16CE92),
                                              borderRadius:
                                                  BorderRadius.circular(50),
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
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 200,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("${offer[index]['image']}"),
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
                                    "${offer[index]['carImage']}",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
