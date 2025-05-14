import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:happyeasyrides/provider/upcoming_provider.dart';
import 'package:provider/provider.dart';

class UpcomingScreen extends StatefulWidget {
  const UpcomingScreen({super.key});

  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return SingleChildScrollView(
      child: Consumer<UpcomingProvider>(
        builder: (context, upcomingProvider, child) {
          final upcomingArr = upcomingProvider.arrUpcoming;

          return Column(
            children: List.generate(upcomingArr.length, (index) {
              return Stack(
                children: [
                  Container(
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
                              upcomingArr[index]["image"] ?? "",
                              width: width * 0.20,
                              height: height * 0.054,
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      upcomingArr[index]["carName"] ?? "",
                                      style: TextStyle(
                                        color: Color(0xff121826),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      upcomingArr[index]["model"] ?? "",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 14,
                                      height: 14,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            upcomingArr[index]["gearPic"] ?? "",
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 2.83),
                                    Text(
                                      upcomingArr[index]["gear"] ?? "",
                                      style: TextStyle(
                                        color: Color(0xff6E7FAA),
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(width: 7.85),
                                    Container(
                                      width: 14,
                                      height: 14,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            upcomingArr[index]["fuelPic"] ?? "",
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 2.83),
                                    Text(
                                      upcomingArr[index]["fuel"] ?? "",
                                      style: TextStyle(
                                        color: Color(0xff6E7FAA),
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(width: 7.85),
                                    Container(
                                      width: 14,
                                      height: 14,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            upcomingArr[index]["seatPic"] ?? "",
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 2.83),
                                    Text(
                                      upcomingArr[index]["seat"] ?? "",
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
                                        date:
                                            upcomingArr[index]["pickUpdate"] ??
                                            "",
                                        heading: "Pick Up-",
                                        location:
                                            upcomingArr[index]["pickUpaddress"] ??
                                            "",
                                        time:
                                            upcomingArr[index]["pickUptime"] ??
                                            "",
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: newcont(
                                        date:
                                            upcomingArr[index]["dropOffdate"] ??
                                            "",
                                        heading: "Drop Off-",
                                        location:
                                            upcomingArr[index]["dropOffaddress"] ??
                                            "",
                                        time:
                                            upcomingArr[index]["dropOfftime"] ??
                                            "",
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
                  ),
                  Positioned(
                    top: 15,
                    right: 24,
                    child: Container(
                      width: width * 0.07,
                      height: height * 0.03,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffe2e5ee),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/img/arrow_booking_icon.png",
                          height: 12.01,
                          width: 12.01,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
          );
        },
      ),
      //SizedBox(height: 10),
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
            Row(
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: Color(0xff16CE92),
                    shape: BoxShape.circle,
                  ),
                ),
                Expanded(
                  child: DottedDashedLine(
                    width: 10,
                    height: .15,
                    axis: Axis.horizontal,
                    dashColor: Color(0xff16CE92),
                  ),
                ),
              ],
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
