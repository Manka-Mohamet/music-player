import 'package:flutter/material.dart';
import 'package:musics/MusicPage.dart';
import 'package:musics/musiclist.dart';
import 'package:musics/playlist.dart';
import 'package:musics/playlistPage.dart';

void main() {
  runApp(Musics());
}

class Musics extends StatelessWidget {
  const Musics({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        routes: {
          '/PlayListPage': (context) => PlayListPage(),
          '/MusicPage': (context) => MusicPage(),
        },
        home: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xFF303151).withOpacity(0.6),
                Color(0xFF303151).withOpacity(0.9)
              ])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Home(),
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16.0,
            left: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        size: 26,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.more_vert_outlined,
                        size: 26,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text('Hello Sir!',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text('What you want to hear?',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      fontSize: 16,
                    )),
              ),
              Container(
                height: 40,
                width: 299,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xFF31314F).withOpacity(0.6)),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 230,
                      margin: EdgeInsets.symmetric(horizontal: 11),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'search the music',
                            hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.3))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 11),
                      child: Icon(
                        Icons.search,
                        size: 23,
                        color: Colors.white.withOpacity(0.4),
                      ),
                    )
                  ],
                ),
              ),
              TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                    text: 'Music',
                  ),
                  Tab(
                    text: 'Playlist',
                  ),
                  Tab(
                    text: 'Favourite',
                  ),
                  Tab(
                    text: 'Trending',
                  ),
                  Tab(
                    text: 'Collection',
                  ),
                  Tab(
                    text: 'New',
                  ),
                ],
                indicator: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 2, color: Color(0xFF899CCF)))),
              ),
              Flexible(
                  child: TabBarView(children: [
                MusicList(j: 20),
                PlayList(),
                MusicList(j: 9),
                MusicList(j: 7),
                MusicList(j: 5),
                MusicList(j: 4),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
