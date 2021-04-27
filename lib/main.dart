import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Profile'),
    );
  }
}

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

  add_frend(image, name, job) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/$image.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$name'),
                        Text('$job'),
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
          padding: const EdgeInsets.only(left: 48),
          child: Divider(
            color: Colors.grey[350],
            thickness: 1.8,
          ),
        )
      ],
    );
  }

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
          style: TextStyle(color: Colors.black),
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
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 2),
                Text(
                  'Developer',
                  style: TextStyle(fontSize: 12),
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
                      style: TextStyle(fontSize: 16),
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
                              label: Text('$label'),
                              backgroundColor: Colors.grey[200],
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6),
                    Divider(
                      color: Colors.grey[350],
                      thickness: 1.8,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Friends',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),

                    ////////////////////

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
                                  label: Text('ADD FREND'),
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
                        // Images
                        //
                        SizedBox(
                          height: 345,
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
                                  backgroundImage:
                                      AssetImage('assets/$image.jpg'),
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
                        ),
                        //
                        // Bottom buttons
                        //
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
