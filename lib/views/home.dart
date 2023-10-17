import 'package:flutter/material.dart';
import 'package:mencoba/widgets/album_card.dart';

import '../widgets/song_card.dart';

// ignore: use_key_in_widget_constructors
class HomeView extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.green.withOpacity(0.5),
                    Colors.green.withOpacity(0.1),
                    Colors.green.withOpacity(0)
                  ]),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 6),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                // radius: 40,
                                child: ClipOval(
                                  child: Image.asset(
                                    "assets/album1.jpg",
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  "Selamat Datang",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Icon(Icons.notifications_none),
                                SizedBox(
                                  width: 16,
                                ),
                                Icon(Icons.history),
                                SizedBox(
                                  width: 16,
                                ),
                                Icon(Icons.settings),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 16),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "Top 50 - Global",
                                image: AssetImage("assets/top50.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Best Mode",
                                image: AssetImage("assets/album6.jpg"),
                              ),
                            ],
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(height: 16),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "RapCaviar",
                                image: AssetImage("assets/album2.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Eminem",
                                image: AssetImage("assets/album5.jpg"),
                              ),
                            ],
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(height: 16),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "Top 50 - USA",
                                image: AssetImage("assets/album9.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Pop Remix",
                                image: AssetImage("assets/album10.jpg"),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Baru saja didengar",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          AlbumCard(
                              label: "Besst Mode",
                              image: AssetImage("assets/album6.jpg")),
                          SizedBox(
                            width: 16,
                          ),
                          AlbumCard(
                              label: "Besst Mode",
                              image: AssetImage("assets/album2.jpg")),
                          SizedBox(
                            width: 16,
                          ),
                          AlbumCard(
                              label: "Besst Mode",
                              image: AssetImage("assets/album3.jpg")),
                          SizedBox(
                            width: 16,
                          ),
                          AlbumCard(
                              label: "Besst Mode",
                              image: AssetImage("assets/album4.jpg")),
                          SizedBox(
                            width: 16,
                          ),
                          AlbumCard(
                              label: "Besst Mode",
                              image: AssetImage("assets/album5.jpg")),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.grey.withOpacity(0.2),
                                Colors.grey.withOpacity(0.01),
                                Colors.grey.withOpacity(0),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  "Sering anda dengar",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall,
                                ),
                              ),
                              const SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Row(
                                  children: [
                                    SongCard(
                                      image: AssetImage("assets/album2.jpg"),
                                      deskripsi: "bebas beas saja digoyang 8 juta",
                                    ),
                                    SizedBox(width: 16),
                                    SongCard(
                                      image: AssetImage("assets/album6.jpg"),
                                      deskripsi: "bebas beas saja digoyang 8 juta",
                                    ),
                                    SizedBox(width: 16),
                                    SongCard(
                                      image: AssetImage("assets/album9.jpg"),
                                      deskripsi: "bebas beas saja digoyang 8 juta",
                                    ),
                                    SizedBox(width: 16),
                                    SongCard(
                                      image: AssetImage("assets/album4.jpg"),
                                      deskripsi: "bebas beas saja digoyang 8 juta",
                                    ),
                                    SizedBox(width: 16),
                                    SongCard(
                                      image: AssetImage("assets/album5.jpg"),
                                      deskripsi: "bebas beas saja digoyang 8 juta",
                                    ),
                                    SizedBox(width: 16),
                                    SongCard(
                                      image: AssetImage("assets/album1.jpg"),
                                      deskripsi: "bebas beas saja digoyang 8 juta",
                                    ),
                                    SizedBox(height: 20),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              height: 48,
              width: 48,
              fit: BoxFit.cover,
            ),
            // ignore: prefer_const_constructors
            SizedBox(width: 8),
            Text(label)
          ],
        ),
      ),
    );
  }
}