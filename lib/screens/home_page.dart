import 'package:flutter/services.dart';
import 'package:task_3_flutter/components/chips.dart';

import '../components/users.dart';
import '../components/images_data.dart';
import 'package:flutter/material.dart';
import '../task3_theme.dart';
import '../components/avatar.dart';
import '../components/divider.dart';
import '../components/chips.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace_rounded,
            color: Black,
          ),
        ),
        backgroundColor: White,
        title: Text(
          widget.title,
          style: Task3Theme.textTheme.headline3,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 25),
            Column(
              children: <Widget>[
                AddAvatar(),
                SizedBox(height: 25),
                Text(
                  'Tiana Rosser',
                  style: Task3Theme.textTheme.headline4,
                ),
                SizedBox(height: 2),
                Text(
                  'Developer',
                  style: Task3Theme.textTheme.headline5,
                ),
                addDivider(),
                Row(
                  children: [
                    Text(
                      'Select type',
                      style: Task3Theme.textTheme.headline6,
                    ),
                  ],
                ),
                SizedBox(height: 11),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddChip(),
                    SizedBox(height: 8),
                    addDivider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Friends',
                          style: Task3Theme.textTheme.headline6,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),

                    ///Adding users, we take data from the method add_frend().
                    addFrend('image21', 'Corey George', 'Developer'),
                    addFrend('Image1', 'Ahmad  Vetrovs', 'Developer'),
                    addFrend('image3', 'Cristofer Workman', 'Developer'),
                    addFrend('image4', 'Tiana Korsgaard', 'Developer'),
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
                                  style: Task3Theme.textTheme.button,
                                ),
                                icon: Icon(Icons.add),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        addDivider(),
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
                        SizedBox(height: 13),
                        //
                        /// Adding photos, we take data from the method add_images().
                        //
                        AddImage(),
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
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Violet500,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style:
                                      ElevatedButton.styleFrom(primary: White),
                                  child: Text(
                                    'ADD',
                                    style: Task3Theme.textTheme.overline,
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
