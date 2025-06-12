import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/select_city.dart';

class HomePageProvider with ChangeNotifier {
  // ignore: unused_field
  String _searchText = "";
  TextEditingController searchController = TextEditingController();
  bool isCitySelected = false;

  String get searchText => searchController.text;

  void setSearchText(String text) {
    searchController.text = text;
    _searchText = text;
    notifyListeners();
  }

  final List<Map<String, String>> _arrWhyhappyeasy = [
    {"image": "assets/img/pic_247.png", "title": "24 x 7 Customer\n Support"},
    {
      "image": "assets/img/car_whyHome.png",
      "title": "Free Delivery On \n Booking Over 72hrs.",
    },
    {"image": "assets/img/pic_247.png", "title": "Clean & Sanitizied \n Cars."},
    {"image": "assets/img/car_whyHome.png", "title": "Easy Booking Experience"},
  ];

  List<Map<String, String>> get arrWhyhappyeasy => _arrWhyhappyeasy;

  final List<Map<String, String>> _arrOffer = [
    {"image": "assets/img/offers_home.png"},
    {"image": "assets/img/offers_home.png"},
    {"image": "assets/img/offers_home.png"},
  ];

  List<Map<String, String>> get arrOffer => _arrOffer;

  final List<Map<String, String>> _arrTestimonial = [
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
  List<Map<String, String>> get arrTestimonial => _arrTestimonial;

  Future<void> showCitySelectionDialog(BuildContext context) async {
    final size = MediaQuery.of(context).size;

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            height: size.height * 0.3,
            width: size.width * 0.8,
            child: Consumer<SelectCityProvider>(
              builder: (context, selectCityProvider, child) {
                return Container(
                  height: size.height * 0.3,
                  width: size.width * 0.8,
                  child: ListView.builder(
                    itemCount: selectCityProvider.cities.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(selectCityProvider.cities[index]),
                        onTap: () {
                          setSearchText(selectCityProvider.cities[index]);
                          isCitySelected = true;
                          notifyListeners();
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  DateTime? selectStartDate;
  DateTime? selectEndDate;
  TimeOfDay? selectStartTime;
  TimeOfDay? selectEndTime;

  void searchResetFields() {
    searchController.clear();
    selectStartDate = null;
    selectEndDate = null;
    selectStartTime = null;
    selectEndTime = null;
    isCitySelected = false;
    _searchText = "";
    notifyListeners();
  }

  Future<void> selectedStartDate(BuildContext context) async {
    final DateTime? startpicked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );

    if (startpicked != null) {
      selectStartDate = startpicked;
      notifyListeners();
    }
  }
  Future<void> selectedEndDate(BuildContext context) async {
    final DateTime? endpicked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );

    if (endpicked != null) {
      selectEndDate = endpicked;
      notifyListeners();
    }
  }

  Future<void> selectedStartTime(BuildContext context) async {
    final TimeOfDay? startTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (startTime != null) {
      selectStartTime = startTime;
      notifyListeners();
    }
  }

  Future<void> selectedEndTime(BuildContext context) async {
    if (selectStartTime == null) return;

    final TimeOfDay? endTime = await showTimePicker(
      context: context,
      initialTime: selectStartTime!,
    );

    if (endTime != null) {
      // Convert times to minutes for comparison
      final startMinutes = selectStartTime!.hour * 60 + selectStartTime!.minute;
      final endMinutes = endTime.hour * 60 + endTime.minute;

      if (endMinutes <= startMinutes) return;

      selectEndTime = endTime;
      notifyListeners();
    }
  }
}
