import 'package:flutter/material.dart';
import 'data.dart';

class MusicList extends StatelessWidget {
  final int j;
  const MusicList({super.key, required this.j});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 13,
          ),
          for (int i = 1; i <= j; i++)
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
                  Text(i.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Imagine Dragins - Beleivers',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: [
                          Text(
                            'Bass',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.4)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '-',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '2:34',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.w400),
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
    );
  }
}
