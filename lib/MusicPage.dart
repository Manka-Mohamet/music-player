import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  dynamic percent = 13.2;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xFF303151).withOpacity(0.6),
              Color(0xFF303151).withOpacity(0.9)
            ])),
        child: SingleChildScrollView(
            child: SafeArea(
                child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: Color(0xFF899CCF),
                    size: 30,
                  ),
                ),
                Icon(
                  Icons.more_vert_outlined,
                  color: Color(0xFF899CCF),
                  size: 30,
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              'images/sunrise.jpg',
              width: 220,
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Column(
            children: [
              DefaultTextStyle(
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
                child: Text(
                  'See you again',
                ),
              ),
              SizedBox(height: 12),
              DefaultTextStyle(
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8), fontSize: 16),
                child: Text(
                  'Wizz khalifa',
                ),
              )
            ],
          ),
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultTextStyle(
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.4), fontSize: 12),
                  child: Text(
                    '2:52',
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.4), fontSize: 12),
                  child: Text(
                    '5:17',
                  ),
                ),
              ],
            ),
          ),
          Slider(
            value: percent,
            max: 100,
            min: 0.0,
            onChanged: (value) {
              setState(() {
                percent = value;
              });
            },
            activeColor: Colors.white,
            inactiveColor: Colors.white70.withOpacity(0.4),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Container(
                    height: 45,
                    width: 65,
                    decoration: BoxDecoration(
                      color: Color(0xFF31314F).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            CupertinoIcons.list_bullet,
                            color: Colors.white,
                            size: 26,
                          )
                        ]),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 45,
                    width: 65,
                    decoration: BoxDecoration(
                      color: Color(0xFF31314F).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            CupertinoIcons.backward_end_fill,
                            color: Colors.white,
                            size: 26,
                          )
                        ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60)),
                    child: Icon(
                      Icons.play_arrow,
                      size: 50,
                      color: Color(0xFF31314F),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 45,
                    width: 65,
                    decoration: BoxDecoration(
                      color: Color(0xFF31314F).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            CupertinoIcons.forward_end_fill,
                            color: Colors.white,
                            size: 26,
                          )
                        ]),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 45,
                    width: 65,
                    decoration: BoxDecoration(
                      color: Color(0xFF31314F).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.favorite_outline_sharp,
                            color: Colors.white,
                            size: 26,
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ]))));
  }
}
