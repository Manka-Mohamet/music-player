import 'package:flutter/material.dart';
import 'package:musics/playlistPage.dart';

class PlayList extends StatelessWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 13,
          ),
          for (int i = 0; i <= 20; i++)
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/PlayListPage');
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 15,
                  top: 11,
                ),
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 9),
                decoration: BoxDecoration(
                    color: Color(0xFF31314F).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(7)),
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/sunrise.jpg',
                      fit: BoxFit.cover,
                      height: 48,
                      width: 48,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Imagine Dragons',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '30 Songs',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ]),
              ),
            )
        ],
      ),
    );
  }
}
