import 'package:flutter/material.dart';
import 'package:musics/musiclist.dart';

class PlayListPage extends StatelessWidget {
  const PlayListPage({super.key});

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
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10),
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
              SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'images/sunrise.jpg',
                  width: 220,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  DefaultTextStyle(
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                    child: Text(
                      'Imagine Dragons',
                    ),
                  ),
                  SizedBox(height: 4),
                  DefaultTextStyle(
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 16),
                    child: Text(
                      'Singer Name',
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                InkWell(
                  child: Container(
                    height: 53,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DefaultTextStyle(
                            style: TextStyle(
                                color: Color(
                                  0xFF303140,
                                ),
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                            child: Text(
                              'Play all',
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.play_arrow,
                            color: Color(0xFF303140),
                            size: 35,
                          )
                        ]),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 53,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Color(0xFF31314F).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DefaultTextStyle(
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                            child: Text(
                              'Shuffle',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.shuffle,
                            color: Colors.white,
                            size: 30,
                          )
                        ]),
                  ),
                ),
              ]),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 13,
                    ),
                    for (int i = 1; i <= 13; i++)
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/MusicPage');
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 11, left: 10, right: 15),
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFF31314F).withOpacity(0.5),
                              borderRadius: BorderRadius.circular(7)),
                          child: Row(children: [
                            DefaultTextStyle(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                              child: Text(
                                i.toString(),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DefaultTextStyle(
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  child: Text(
                                    'Imagine Dragins - Beleivers',
                                  ),
                                ),
                                Row(
                                  children: [
                                    DefaultTextStyle(
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.4)),
                                      child: Text(
                                        'Bass',
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    DefaultTextStyle(
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.4),
                                      ),
                                      child: Text(
                                        '-',
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    DefaultTextStyle(
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontWeight: FontWeight.w400),
                                      child: DefaultTextStyle(
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.3)),
                                        child: Text(
                                          '2:34',
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 24,
                                  color: Color(0xFF31314F),
                                ),
                              ),
                            )
                          ]),
                        ),
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
