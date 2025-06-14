import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:happyeasyrides/provider/home_page_provider.dart';
import 'package:happyeasyrides/provider/select_city.dart';
import 'package:happyeasyrides/screens/available_car_screen.dart';
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
  int currentOfferIndex = 0;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context);
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
              color: Colors.white,
              gradient: LinearGradient(
                colors: [const Color(0xff15CF92), const Color(0xff047EAA)],
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
                            onTap:
                                () => _showLocationBottomSheet(context, width),
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
                                      const SizedBox(width: 7),
                                      Text(
                                        "Enter your location",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Icon(
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
                            onTap:
                                () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => const NotificationScreen(),
                                  ),
                                ),
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
                Expanded(
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 31),
                            Text(
                              "Book Your Self-Drive Car\nRental Now",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Container(
                              width: width * 0.18,
                              height: 1,
                              decoration: const BoxDecoration(
                                color: Color(0xffFFC641),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Select The City & Date Now",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: height * 0.11),
                            _buildContentSection(
                              context,
                              provider,
                              width,
                              height,
                            ),
                          ],
                        ),
                        _buildSearchSection(context, provider, size),
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

  Widget _buildContentSection(
    BuildContext context,
    HomePageProvider provider,
    double width,
    double height,
  ) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
      width: width,
      decoration: BoxDecoration(
        color: const Color(0xffF8F8FB),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.14),
          _buildWhyHappyEasySection(context, provider),
          const SizedBox(height: 30),
          _buildOffersSection(context, provider, height, width),
          const SizedBox(height: 20),
          _buildTestimonialsSection(context, provider, width),
          const SizedBox(height: 29.5),
        ],
      ),
    );
  }

  Widget _buildWhyHappyEasySection(
    BuildContext context,
    HomePageProvider provider,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Why Happyeasy Rides",
            style: TextStyle(
              color: Color(0xff100C08),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 13),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: List.generate(
                3,
                (index) => whyHappyeasyRides(
                  index: index,
                  img: provider.arrWhyhappyeasy[index]['image'] ?? "",
                  text: provider.arrWhyhappyeasy[index]['title'] ?? "",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOffersSection(
    BuildContext context,
    HomePageProvider provider,
    double height,
    double width,
  ) {
    return Container(
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
                const Text(
                  "Offers At Happyeasy Rides",
                  style: TextStyle(
                    color: Color(0xff100C08),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Coupons(),
                        ),
                      ),
                  child: const Text(
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
              onPageChanged:
                  (index, _) => setState(() => currentOfferIndex = index),
            ),
            items:
                provider.arrOffer.map<Widget>((offer) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        offer["image"] ?? "",
                        width: width * 0.81,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                }).toList(),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              provider.arrOffer.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                height: 8,
                width: currentOfferIndex == index ? 25 : 8,
                decoration: BoxDecoration(
                  color:
                      currentOfferIndex == index
                          ? const Color(0xff0077AC)
                          : const Color(0xffadd3e4),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildTestimonialsSection(
    BuildContext context,
    HomePageProvider provider,
    double width,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Testimonials",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff100C08),
            ),
          ),
        ),
        const SizedBox(height: 13.5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                provider.arrTestimonial.length,
                (index) => Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      width: width * 0.67,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffe0f1f0),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                        color: Colors.white,
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffE0F1F0),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              provider.arrTestimonial[index]["name"] ?? "",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff3B4051),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              provider.arrTestimonial[index]["testimonial"] ??
                                  "",
                              style: const TextStyle(
                                fontSize: 10,
                                color: Color(0xff515F65),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 2,
                                  color: const Color(
                                    0xff16CE92,
                                  ).withOpacity(0.1),
                                ),
                              ),
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff05073C),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 11.59,
                      right: 11.5,
                      child: Image(
                        image: AssetImage("assets/img/cmnt_icon.png"),
                        width: 28,
                        height: 28.01,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSearchSection(
    BuildContext context,
    HomePageProvider provider,
    Size size,
  ) {
    return Positioned(
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
                onTap: () => provider.showCitySelectionDialog(context),
                readOnly: true,
                onTapOutside: (_) => FocusScope.of(context).unfocus(),
                controller: provider.searchController,
                decoration: InputDecoration(
                  suffixIcon: SizedBox(
                    width: 11.42,
                    height: 5.22,
                    child: Center(
                      child: Container(
                        width: 11.42,
                        height: 5.22,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/img/arrow_down.png"),
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
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/img/car_home.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  labelText: "Search city to search",
                  labelStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff6E7FAA),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffE7EBF5)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffe7ebf5),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffe7ebf5),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
            if (provider.isCitySelected)
              //===============================
              _DateTimeContainer(
                label: "Start Date & Time",
                selectedDate: provider.selectStartDate,
                selectedTime: provider.selectStartTime,
                onTap: () => provider.selectStartDateAndTime(context),
              ),
            if (provider.selectStartDate != null)
              //=======================
              _DateTimeContainer(
                label: "End Date & Time",
                selectedDate: provider.selectEndDate,
                selectedTime: provider.selectEndTime,
                onTap: () => provider.selectEndDateAndTime(context),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          builder: (context) => const AvailableCarScreen(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff0077AC),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.search, color: Colors.white, size: 18),
                      const SizedBox(width: 6.72),
                      const Text(
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
            const SizedBox(height: 31),
          ],
        ),
      ),
    );
  }

  void _showLocationBottomSheet(BuildContext context, double width) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: width,
          decoration: const BoxDecoration(
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.location_searching_outlined,
                  color: Color(0xff15CF92),
                  size: 24,
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xff15CF92)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
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
  }

  Widget whyHappyeasyRides({
    required String img,
    required String text,
    required int index,
  }) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => setState(() => whyHappyEasy = index),
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xffE0F1F0)),
          boxShadow: const [BoxShadow(color: Color(0xffe0f1f0), blurRadius: 6)],
          color: whyHappyEasy == index ? const Color(0xff22D6D1) : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: size.width * 0.15,
              height: size.height * 0.04,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    whyHappyEasy == index
                        ? Colors.white
                        : const Color(0xffd8fffe),
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
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.only(right: 24, left: 24, bottom: 19),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
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

class DateTimeContainer extends StatelessWidget {
  final String label;
  final DateTime? selectedDate;
  final TimeOfDay? selectedTime;
  final VoidCallback onTap;

  const DateTimeContainer({
    super.key,
    required this.label,
    required this.selectedDate,
    required this.selectedTime,
    required this.onTap,
  });

  String _formatDateTime() {
    if (selectedDate == null) return "";
    final date = selectedDate!;
    final time = selectedTime ?? const TimeOfDay(hour: 0, minute: 0);

    return "${date.day.toString().padLeft(2, '0')}-"
        "${date.month.toString().padLeft(2, '0')}-"
        "${date.year} "
        "${time.hour.toString().padLeft(2, '0')}:"
        "${time.minute.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        onTap: onTap,
        readOnly: true,
        controller: TextEditingController(text: _formatDateTime()),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(fontSize: 16, color: Color(0xff6E7FAA)),
          prefixIcon: const Icon(
            Icons.calendar_today,
            color: Color(0xff6E7FAA),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffE7EBF5)),
            borderRadius: BorderRadius.circular(40),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffe7ebf5), width: 1),
            borderRadius: BorderRadius.circular(40),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffe7ebf5), width: 1),
            borderRadius: BorderRadius.circular(40),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }
}

class _DateTimeContainer extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final DateTime? selectedDate;
  final TimeOfDay? selectedTime;

  const _DateTimeContainer({
    required this.onTap,
    required this.label,
    this.selectedDate,
    this.selectedTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.06,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffe7ebf5)),
            boxShadow: [
              BoxShadow(
                color: Color(0xffe7ebf5),
                offset: Offset(0, 1),
                spreadRadius: .5,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: Text(
              selectedDate != null
                  ? "Date: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year} - ${selectedTime?.format(context) ?? 'Select Time'}"
                  : label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff6E7FAA),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
