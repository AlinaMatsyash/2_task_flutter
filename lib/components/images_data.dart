import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import '../task3_theme.dart';

class AddImage extends StatefulWidget {
  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
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
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
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
              child: Padding(
                padding: const EdgeInsets.only(top: 5, right: 5),
                child: Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: MediaQuery.of(context).size.width / 28,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 33,
                      child: Center(
                        child: FloatingActionButton(
                          backgroundColor: Red200,
                          child: Icon(
                            Icons.close,
                            size: MediaQuery.of(context).size.width / 25,
                          ),
                          onPressed: () {},
                          //Icons.close,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
