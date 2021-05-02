import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../task3_theme.dart';

class AddChip extends StatefulWidget {
  @override
  _AddChipState createState() => _AddChipState();
}

class _AddChipState extends State<AddChip> {
  dynamic action = Colors.black;
  final actionColor = Colors.white;
  bool _isSelected;
  List<String> _choices;
  int _defaultChoiceIndex;

  final labels = [
    'Black',
    'Bold',
    'Medium',
    'Regular',
    'Light',
    'Black',
    'Bold',
  ];

  List<String> _dynamicChips;

  @override
  void initState() {
    super.initState();
    _defaultChoiceIndex = 0;
    _isSelected = false;
    _dynamicChips = [
      'Black',
      'Bold',
      'Medium',
      'Regular',
      'Light',
      'Black',
      'Bold',
    ];
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

  rowChips() {
    return Row(
      children: [
        actionChips(labels[0]),
        actionChips(labels[1]),
        actionChips(labels[2]),
        actionChips(labels[3]),
        actionChips(labels[4]),
        actionChips(labels[5]),
        actionChips(labels[0]),
      ],
    );
  }

  dynamicChips() {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: List<Widget>.generate(
        _dynamicChips.length,
        (int index) {
          return InputChip(
            elevation: 6.0,
            padding: EdgeInsets.all(10.0),
            label: Text(_dynamicChips[index]),
            backgroundColor: Gray008,
            selected: _isSelected,
            selectedColor: Fill,
            onSelected: (bool selected) {
              setState(() {
                _isSelected = selected;
              });
            },
          );
        },
      ),
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
              label: Text(_choices[index]),
              selected: _defaultChoiceIndex == index,
              //side: BorderSide(width: 1, color: Stroke),
              selectedColor: Fill,
              onSelected: (bool selected) {
                setState(() {
                  _defaultChoiceIndex = selected ? index : null;
                });
              },
              backgroundColor: Gray008,
              labelStyle: TextStyle(color: Black038),
            );
          }),
    );
  }

  Widget actionChips(String label) {
    return ActionChip(
      elevation: 6.0,
      padding: EdgeInsets.all(10.0),
      label: Text(
        '$label',
      ),
      backgroundColor: Gray008,
      onPressed: () {},
    );
  }

  Widget chipForRow(String label) {
    return Container(
      margin: EdgeInsets.all(1),
      child: Chip(
        label: Text(
          '$label',
          style: Task3Theme.textTheme.caption,
        ),
        backgroundColor: Gray008,
      ),
    );
  }
}
