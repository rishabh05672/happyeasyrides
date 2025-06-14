import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/select_city.dart';

class HomePageProvider with ChangeNotifier {
  // Search and city selection
  String _searchText = "";
  TextEditingController searchController = TextEditingController();
  bool isCitySelected = false;

  // Date and time selection state
  DateTime? selectStartDate;
  DateTime? selectEndDate;
  TimeOfDay? selectStartTime;
  TimeOfDay? selectEndTime;

  // Static content data
  final List<Map<String, String>> _arrWhyhappyeasy = [
    {"image": "assets/img/pic_247.png", "title": "24 x 7 Customer\n Support"},
    {
      "image": "assets/img/car_whyHome.png",
      "title": "Free Delivery On \n Booking Over 72hrs.",
    },
    {"image": "assets/img/pic_247.png", "title": "Clean & Sanitizied \n Cars."},
    {"image": "assets/img/car_whyHome.png", "title": "Easy Booking Experience"},
  ];

  final List<Map<String, String>> _arrOffer = [
    {"image": "assets/img/offers_home.png"},
    {"image": "assets/img/offers_home.png"},
    {"image": "assets/img/offers_home.png"},
  ];

  final List<Map<String, String>> _arrTestimonial = [
    {
      "name": "Himani Sing",
      "testimonial": "Lorem Ipsum is simply dummy text...",
    },
    // ... other testimonials
  ];

  // Getters
  String get searchText => searchController.text;
  List<Map<String, String>> get arrWhyhappyeasy => _arrWhyhappyeasy;
  List<Map<String, String>> get arrOffer => _arrOffer;
  List<Map<String, String>> get arrTestimonial => _arrTestimonial;

  // City selection dialog
  Future<void> showCitySelectionDialog(BuildContext context) async {
    final selectCityProvider = Provider.of<SelectCityProvider>(
      context,
      listen: false,
    );

    final selectedCity = await showDialog<String>(
      context: context,
      builder:
          (context) => AlertDialog(
            content: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ListView.builder(
                itemCount: selectCityProvider.cities.length,
                itemBuilder:
                    (context, index) => ListTile(
                      title: Text(selectCityProvider.cities[index]),
                      onTap:
                          () => Navigator.pop(
                            context,
                            selectCityProvider.cities[index],
                          ),
                    ),
              ),
            ),
          ),
    );

    if (selectedCity != null) {
      setSearchText(selectedCity);
      isCitySelected = true;
      notifyListeners();
    }
  }

  // Reset all fields
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

  // Start Date/Time selection
  Future<void> selectStartDateAndTime(BuildContext context) async {
    // First select date
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (pickedDate != null) {
      selectStartDate = pickedDate;
      notifyListeners();

      // Then automatically select time
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        selectStartTime = pickedTime;
        notifyListeners();
      }
    }
  }

  // End Date/Time selection
  Future<void> selectEndDateAndTime(BuildContext context) async {
    if (selectStartTime == null) return;

    // First select date
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectStartDate ?? DateTime.now(),
      firstDate: selectStartDate ?? DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (pickedDate != null) {
      // Validate end date
      if (selectStartDate != null && pickedDate.isBefore(selectStartDate!)) {
        _showErrorSnackbar(context, "End date cannot be before start date");
        return;
      }

      selectEndDate = pickedDate;
      notifyListeners();

      // Then automatically select time
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: selectStartTime!,
      );

      if (pickedTime != null) {
        _validateAndSetEndTime(context, pickedTime);
      }
    }
  }

  void _validateAndSetEndTime(BuildContext context, TimeOfDay endTime) {
    if (selectStartDate != null && selectEndDate != null) {
      final isSameDay =
          selectStartDate!.year == selectEndDate!.year &&
          selectStartDate!.month == selectEndDate!.month &&
          selectStartDate!.day == selectEndDate!.day;

      if (isSameDay) {
        final startMinutes =
            selectStartTime!.hour * 60 + selectStartTime!.minute;
        final endMinutes = endTime.hour * 60 + endTime.minute;

        if (endMinutes <= startMinutes) {
          _showErrorSnackbar(context, "End time must be after start time");
          return;
        }
      }
    }

    selectEndTime = endTime;
    notifyListeners();
    _showSuccessSnackbar(context, "All details selected successfully!");
  }

  // Helper methods
  void _showErrorSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }

  void _showSuccessSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.green),
    );
  }

  void setSearchText(String text) {
    searchController.text = text;
    _searchText = text;
    notifyListeners();
  }
}
