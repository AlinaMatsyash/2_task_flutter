import 'package:flutter/material.dart';
import '../task3_theme.dart';

class AddAvatar extends StatefulWidget {
  @override
  _AddAvatarState createState() => _AddAvatarState();
}

class _AddAvatarState extends State<AddAvatar> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: MediaQuery.of(context).size.width / 6,
      backgroundImage: AssetImage('assets/avatar.jpeg'),
      backgroundColor: Colors.transparent,
      child: Align(
        alignment: Alignment.bottomRight,
        child: CircleAvatar(
          backgroundColor: White,
          radius: MediaQuery.of(context).size.width / 21,
          child: CircleAvatar(
            radius: MediaQuery.of(context).size.width / 24,
            child: Center(
              child: FloatingActionButton(
                backgroundColor: Violet700,
                child: Icon(
                  Icons.add,
                  size: MediaQuery.of(context).size.width / 18,
                ),
                onPressed: () {},
                //Icons.close,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
