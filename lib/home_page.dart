import 'users.dart';
import 'images_data.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({this.image, this.title, this.name, this.job});
  String image;
  String name;
  String job;
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final labels = [
    'Black',
    'Bold',
    'Medium',
    'Regular',
    'Light',
    'Black',
    'Bold'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace_rounded,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.menu, color: Colors.black), onPressed: () {})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 25),
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/avatar.jpg'),
                  backgroundColor: Colors.transparent,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20.0,
                      child: CircleAvatar(
                        radius: 18.0,
                        child: Icon(Icons.add),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Tiana Rosser',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 2),
                Text(
                  'Developer',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 10),
                Divider(
                  color: Colors.grey[350],
                  thickness: 1.8,
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Select type',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 11),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (var label in labels)
                            Chip(
                              label: Text(
                                '$label',
                                style: TextStyle(color: Colors.grey),
                              ),
                              backgroundColor: Colors.grey[200],
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Divider(
                      color: Colors.grey[350],
                      thickness: 1.8,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Friends',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),

                    ///Adding users, we tske data from the method add_frend().
                    add_frend('image21', 'Corey George', 'Developer'),
                    add_frend('Image1', 'Ahmad  Vetrovs', 'Developer'),
                    add_frend('image3', 'Cristofer Workman', 'Developer'),
                    add_frend('image4', 'Tiana Korsgaard', 'Developer'),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 13, bottom: 11),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              OutlineButton.icon(
                                  label: Text(
                                    'ADD FREND',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  icon: Icon(Icons.add),
                                  onPressed: () {}),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey[350],
                          thickness: 1.8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'My media',
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        //
                        /// Adding photos, we take data from the method add_images().
                        //
                        add_images(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 7),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'DELETE',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color.fromRGBO(109, 92, 238, 1)),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white),
                                  child: Text(
                                    'ADD',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(109, 92, 238, 1)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
