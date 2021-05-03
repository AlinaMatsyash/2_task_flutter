import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../task3_theme.dart';

class AddChip extends StatefulWidget {
  @override
  _AddChipState createState() => _AddChipState();
}

class _AddChipState extends State<AddChip> {
  List<String> _choices;
  int _defaultChoiceIndex;

  @override
  void initState() {
    super.initState();
    _defaultChoiceIndex = 0;
    _choices = [
      'Black',
      'Bold',
      'Medium',
      'Regular',
      'Light',
      'Black',
      'Bold',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        choiceChip(),
      ],
    );
  }

  Widget choiceChip() {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _choices.length,
        itemBuilder: (BuildContext context, int index) {
          return ChoiceChip(
            shape: StadiumBorder(
              side: BorderSide(
                width: 1,
                color: _defaultChoiceIndex == index ? Stroke : White,
              ),
            ),
            label: Text(
              _choices[index],
            ),
            selected: _defaultChoiceIndex == index,
            //side: BorderSide(width: 1, color: Stroke),
            selectedColor: Fill,
            onSelected: (bool selected) {
              setState(
                () {
                  _defaultChoiceIndex = selected ? index : null;
                },
              );
            },
            backgroundColor: Gray008,
            labelStyle: TextStyle(
              color: _defaultChoiceIndex == index ? Violet700 : Black038,
            ),
          );
        },
      ),
    );
  }
}
