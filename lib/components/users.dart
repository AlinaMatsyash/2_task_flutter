import 'package:flutter/material.dart';
import 'package:task_3_flutter/components/divider.dart';
import 'package:task_3_flutter/task3_theme.dart';
import 'divider.dart';

addFrend(image, name, job) {
  return Column(
    children: [
      Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/users/$image.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //body1
                      Text(
                        '$name',
                        style: Task3Theme.textTheme.bodyText1,
                      ),
                      SizedBox(height: 5),
                      //body2
                      Text(
                        '$job',
                        style: Task3Theme.textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: IconButton(
              alignment: Alignment.topRight,
              onPressed: () {},
              icon: Icon(Icons.close),
              color: Red700,
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 48, bottom: 4),
        child: addDivider(),
      )
    ],
  );
}
