import 'package:flutter/material.dart';

class UpcomingScreen extends StatefulWidget {
  const UpcomingScreen({super.key});

  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  List arrUpcoming = [
    {
      "image": "assets/img/car1_mybooking.png",
      "carName": "Maruti Swift",
      "model": "(Model Apr 2020)",
      "gear": "Automatic",
      "gearPic": "assets/img/gear_mybooking.png",
      "fuelPic": "assets/img/fuel_mybooking.png",
      "seatPic": "assets/img/seat_mybooking.png",
      "fuel": "Petrol",
      "seat": "7 Seats",
      "pickUpaddress": "Delhi-NCR",
      "pickUpdate": "Mon, 06 Jan 2025",
      "pickUptime": "09:30 AM",
      "dropOffaddress": "Delhi-NCR",
      "dropOffdate": "Mon, 07 Tue 2025",
      "dropOfftime": "11:30 PM",
    },
    {
      "image": "assets/img/car2_mybooking.png",
      "carName": "Maruti Swift",
      "model": "(Model Apr 2020)",
      "gearPic": "assets/img/gear_mybooking.png",
      "fuelPic": "assets/img/fuel_mybooking.png",
      "seatPic": "assets/img/seat_mybooking.png",
      "gear": "Automatic",
      "fuel": "Petrol",
      "seat": "7 Seats",
      "pickUpaddress": "Delhi-NCR",
      "pickUpdate": "Mon, 06 Jan 2025",
      "pickUptime": "09:30 AM",
      "dropOffaddress": "Delhi-NCR",
      "dropOffdate": "Mon, 07 Tue 2025",
      "dropOfftime": "11:30 PM",
    },
    {
      "image": "assets/img/car3_mybooking.png",
      "carName": "Maruti Swift",
      "model": "(Model Apr 2020)",
      "gearPic": "assets/img/gear_mybooking.png",
      "fuelPic": "assets/img/fuel_mybooking.png",
      "seatPic": "assets/img/seat_mybooking.png",
      "gear": "Automatic",
      "fuel": "Petrol",
      "seat": "7 Seats",
      "pickUpaddress": "Delhi-NCR",
      "pickUpdate": "Mon, 06 Jan 2025",
      "pickUptime": "09:30 AM",
      "dropOffaddress": "Delhi-NCR",
      "dropOffdate": "Mon, 07 Tue 2025",
      "dropOfftime": "11:30 PM",
    },
    {
      "image": "assets/img/car4_mybooking.png",
      "carName": "Maruti Swift",
      "model": "(Model Apr 2020)",
      "gearPic": "assets/img/gear_mybooking.png",
      "fuelPic": "assets/img/fuel_mybooking.png",
      "seatPic": "assets/img/seat_mybooking.png",
      "gear": "Automatic",
      "fuel": "Petrol",
      "seat": "7 Seats",
      "pickUpaddress": "Delhi-NCR",
      "pickUpdate": "Mon, 06 Jan 2025",
      "pickUptime": "09:30 AM",
      "dropOffaddress": "Delhi-NCR",
      "dropOffdate": "Mon, 07 Tue 2025",
      "dropOfftime": "11:30 PM",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return ListView.builder(
      itemCount: arrUpcoming.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 10),
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 17),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 13,
                    right: 11,
                    top: 16,
                    bottom: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffeff3ff),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 29),
                    height: 52,
                    width: 89,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(arrUpcoming[index]["image"]),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            arrUpcoming[index]["carName"],
                            style: TextStyle(
                              color: Color(0xff121826),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            arrUpcoming[index]["model"],
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  arrUpcoming[index]["gearPic"],
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text(
                            arrUpcoming[index]["gear"],
                            style: TextStyle(
                              color: Color(0xff6E7FAA),
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 2),
                          Container(
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  arrUpcoming[index]["fuelPic"],
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text(
                            arrUpcoming[index]["fuel"],
                            style: TextStyle(
                              color: Color(0xff6E7FAA),
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 2),
                          Container(
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  arrUpcoming[index]["seatPic"],
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text(
                            arrUpcoming[index]["seat"],
                            style: TextStyle(
                              color: Color(0xff6E7FAA),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Color(0xff94ffdc),
                              ),
                              color: Color(0xffe9fff8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
                                bottom: 4,
                                left: 10,
                                right: 11,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Pick Up-",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        arrUpcoming[index]["pickUpaddress"],
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff6E7FAA),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    arrUpcoming[index]["pickUpdate"],
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff343D3C),
                                    ),
                                  ),
                                  Text(
                                    arrUpcoming[index]["pickUptime"],
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff6E7FAA),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
