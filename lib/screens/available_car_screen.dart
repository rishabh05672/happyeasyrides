import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:happyeasyrides/provider/available_provider.dart';
import 'package:happyeasyrides/provider/home_page_provider.dart';

class AvailableCarScreen extends StatefulWidget {
  const AvailableCarScreen({super.key});

  @override
  State<AvailableCarScreen> createState() => _AvailableCarScreenState();
}

class _AvailableCarScreenState extends State<AvailableCarScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          ),
          Image.asset(
            "assets/img/greentop_coupons.png",
            width: width,
            height: height * 0.11,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21.31, bottom: 32, top: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    "assets/img/Icon feather-arrow-right.png",
                    width: 21,
                    height: 21,
                  ),
                ),
                SizedBox(width: size.width * 0.24),
                Text(
                  "AVAILABLE CARS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: 130,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.grey),
                            SizedBox(width: 5),
                            Text(
                              "Location:",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Delhi NCR",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Consumer<HomePageProvider>(
                          builder: (context, provider, child) {
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    _dateContainer(
                                      title: "Start Date:",
                                      date:
                                          provider.selectStartDate != null
                                              ? "${provider.selectStartDate!.day}/${provider.selectStartDate!.month}/${provider.selectStartDate!.year}"
                                              : "Select Date",
                                    ),
                                    SizedBox(width: 6),
                                    _dateContainer(
                                      title: "Start Time:",
                                      date:
                                          provider.selectStartTime != null
                                              ? "${provider.selectStartTime!.hour}:${provider.selectStartTime!.minute}"
                                              : "Select Time",
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    _dateContainer(
                                      title: "End Date:",
                                      date:
                                          provider.selectEndDate != null
                                              ? "${provider.selectEndDate!.day}/${provider.selectEndDate!.month}/${provider.selectEndDate!.year}"
                                              : "Select Date",
                                    ),
                                    SizedBox(width: 6),
                                    _dateContainer(
                                      title: "End Time:",
                                      date:
                                          provider.selectEndTime != null
                                              ? "${provider.selectEndTime!.hour}:${provider.selectEndTime!.minute}"
                                              : "Select Time",
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                    ),
                    child: Consumer<AvailableProvider>(
                      builder: (context, provider, child) {
                        return ListView.builder(
                          padding: EdgeInsets.only(top: 10, bottom: 50),
                          itemCount: provider.availableCard.length,
                          itemBuilder: (context, index) {
                            final car = provider.availableCard[index];
                            return _availableCar(
                              image: car["image"],
                              carName: car["carName"],
                              carModel: car["model"],
                              gearPic: car["gearPic"],
                              gear: car["gear"],
                              fuelPic: car["fuelPic"],
                              fuel: car["fuel"],
                              seatPic: car["seatPic"],
                              seat: car["seat"],
                              location: car["location"],
                              price: car["price"],
                            );
                          },
                        );
                      },
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

  Widget _dateContainer({required String title, required String date}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 5),
            Text(
              date,
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _availableCar({
    required String image,
    required String carName,
    required String carModel,
    required String gearPic,
    required String gear,
    required String fuelPic,
    required String fuel,
    required String seatPic,
    required String seat,
    required String location,
    required int price,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.only(top: 15, left: 20, right: 20),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: Colors.grey.shade300),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                child: Image.asset(image, fit: BoxFit.contain),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          carName,
                          style: TextStyle(
                            color: Color(0xff121826),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          carModel,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Image.asset(gearPic, width: 14, height: 14),
                        SizedBox(width: 4),
                        Text(
                          gear,
                          style: TextStyle(
                            color: Color(0xff6E7FAA),
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 12),
                        Image.asset(fuelPic, width: 14, height: 14),
                        SizedBox(width: 4),
                        Text(
                          fuel,
                          style: TextStyle(
                            color: Color(0xff6E7FAA),
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 12),
                        Image.asset(seatPic, width: 14, height: 14),
                        SizedBox(width: 4),
                        Text(
                          seat,
                          style: TextStyle(
                            color: Color(0xff6E7FAA),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/img/sixth_splash11.png",
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: 3),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Pickup Location:",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: " $location",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Text(
                          //   "Pickup Location: $location",
                          //   style: TextStyle(color: Colors.grey),
                          // ),
                        ),
                        // Expanded(
                        //   child: Text(
                        //     ,
                        //     style: TextStyle(
                        //       fontSize: 10,
                        //       fontWeight: FontWeight.w600,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "₹ $price",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              bookButton(onPressed: () {}, text: "Book Now"),
            ],
          ),
        ],
      ),
    );
  }

  Widget bookButton({required VoidCallback onPressed, required String text}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Color(0xff0077AC),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
