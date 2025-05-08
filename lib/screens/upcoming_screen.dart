import 'package:dotted_dashed_line/dotted_dashed_line.dart';
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
    //final height = size.height;
    final width = size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(arrUpcoming.length, (index) {
            return Container(
              margin: EdgeInsets.only(top: 10, right: 20, left: 20),
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Color(0xffE6E6F3)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 15,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffEFF3FF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        arrUpcoming[index]["image"],
                        width: 89,
                        height: 52,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                arrUpcoming[index]["carName"],
                                style: TextStyle(
                                  color: Color(0xff121826),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                                overflow: TextOverflow.ellipsis,
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
                          SizedBox(height: 4.75),
                          Row(
                            children: [
                              Expanded(
                                child: newcont(
                                  date: arrUpcoming[index]["pickUpdate"],
                                  heading: "Pick Up-",
                                  location: arrUpcoming[index]["pickUpaddress"],
                                  time: arrUpcoming[index]["pickUptime"],
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: newcont(
                                  date: arrUpcoming[index]["dropOffdate"],
                                  heading: "Drop Off-",
                                  location:
                                      arrUpcoming[index]["dropOffaddress"],
                                  time: arrUpcoming[index]["dropOfftime"],
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
          }),
        ],
      ),
    );
  }

  Widget newcont({
    required String heading,
    required String location,
    required String date,
    required String time,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Color(0xff94ffdc)),
        color: Color(0xffe9fff8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: Text(
                    location,
                    style: TextStyle(fontSize: 10, color: Color(0xff6E7FAA)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
            DottedDashedLine(
              height: 0.1,
              width: 100,
              axis: Axis.horizontal,
              dashColor: Color(0xff16CE92),
            ),
            SizedBox(height: 5),
            Text(
              date,
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w500,
                color: Color(0xff343D3C),
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w500,
                color: Color(0xff6E7FAA),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
