import 'package:flutter/material.dart';
import 'package:mencoba/widgets/album_card.dart';

class LibraryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.green.withOpacity(0.6),
                  Colors.green.withOpacity(0.2),
                  Colors.green.withOpacity(0),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 7),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: ClipOval(
                              child: Image.asset(
                                "assets/album1.jpg",
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            "Koleksi Kamu",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 16),
                        Icon(Icons.add_outlined)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildCategory("Playlist"),
                      buildCategory("Podcast & Acara"),
                      buildCategory("Artis"),
                      buildCategory("Podcast & Acara"),
                      buildCategory("Artis"),
                      buildCategory("Podcast & Acara"),
                      buildCategory("Artis"),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  color: Colors.grey
                      .withOpacity(0.08),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 1),
                        child: Row(
                          children: [Icon(Icons.sync)],
                        ),
                      ),
                      Row(
                        children: [Icon(Icons.grid_view)],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.grey.withOpacity(0.5),
                            Colors.grey.withOpacity(0.1),
                            Colors.grey.withOpacity(0)
                          ]),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                    child: ListView(
                      scrollDirection: Axis.vertical, 
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 8),
                          child: AlbumCardLibrary(
                            label: "Lagu yang disukai",
                            image: AssetImage("assets/album4.jpg"),
                            description: "Playlist",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 8),
                          child: AlbumCardLibrary(
                            label: "Lagu Santai",
                            image: AssetImage("assets/album2.jpg"),
                            description: "adella",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 8),
                          child: AlbumCardLibrary(
                            label: "Spirit sambil bekerja",
                            image: AssetImage("assets/album3.jpg"),
                            description: "adella",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategory(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 52, 51, 51),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: const Color.fromARGB(255, 245, 245, 245),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
