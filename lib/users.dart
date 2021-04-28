import 'package:flutter/material.dart';

add_frend(image, name, job) {
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
                      Text(
                        '$name',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '$job',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.close,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 48, bottom: 4),
        child: Divider(
          color: Colors.grey[350],
          thickness: 1.8,
        ),
      )
    ],
  );
}
