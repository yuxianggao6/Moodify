import 'package:flutter/material.dart';

List<filterChipWidget> chips = [
  filterChipWidget(chipName: "I am not sure"),
  filterChipWidget(chipName: "A good rest"),
  filterChipWidget(chipName: "I am sick"),
  filterChipWidget(chipName: "It's a nice day outside"),
  filterChipWidget(chipName: "I achieved a lot"),
  filterChipWidget(chipName: "Work"),
  filterChipWidget(chipName: "Lack of exercise"),
  filterChipWidget(chipName: "Not enough sleep"),
  filterChipWidget(chipName: "I spent time with loved ones"),
  filterChipWidget(chipName: "I am injured"),
  filterChipWidget(chipName: "Study"),
  filterChipWidget(chipName: "I lost something I need"),
  filterChipWidget(chipName: "I haven't eaten"),
  filterChipWidget(chipName: "I've been inside all day"),
  filterChipWidget(chipName: "It's too cold"),
  filterChipWidget(chipName: "It's too hot"),
  filterChipWidget(chipName: "Good food"),
  filterChipWidget(chipName: "I exercised"),
  filterChipWidget(chipName: "I made a mistake"),
  filterChipWidget(chipName: "I'm hungry"),
  filterChipWidget(chipName: "I have no one to talk to"),
  filterChipWidget(chipName: "I went for a walk"),
  filterChipWidget(chipName: "I have no freetime"),
  filterChipWidget(chipName: "Coding"),
  filterChipWidget(chipName: "I finished making my app!"),
  filterChipWidget(chipName: "Everyone is ignoring me"),
  filterChipWidget(chipName: "I'm always last"),
  filterChipWidget(chipName: "Other"),
];

class filterChipWidget extends StatefulWidget {
  final String chipName;

  const filterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(
        widget.chipName,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      // labelStyle: TextStyle(),
      selected: _isSelected,
      backgroundColor: Color(0xffc2c2c2),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Color(0xffcd7eae),
    );
  }
}
