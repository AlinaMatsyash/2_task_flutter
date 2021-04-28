import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

final images = [
  'Rectangle 6',
  'Rectangle 7',
  'Rectangle 9',
  'Rectangle 8',
  'Rectangle 11',
  'Rectangle 10',
  'Rectangle 12',
  'Rectangle 14',
  'Rectangle 13',
];

add_images() {
  return SizedBox(
    height: 330,
    child: GridView.count(
      padding: EdgeInsets.zero,
      crossAxisCount: 3,
      childAspectRatio: 1,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
      children: [
        for (var image in images)
          GFAvatar(
            shape: GFAvatarShape.standard,
            backgroundImage: AssetImage('assets/images/$image.jpg'),
            child: Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 17.0,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 16.0,
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
      ],
    ),
  );
}
