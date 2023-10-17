import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  String searchText = '';

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
                  Colors.green.withOpacity(0.5),
                  Colors.green.withOpacity(0.2),
                  Colors.green.withOpacity(0),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipOval(
                            child: Image.asset(
                              "assets/album1.jpg",
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "Cari",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [Icon(Icons.camera_alt_outlined)],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                  ),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        searchText = value;
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: 'Artis, Lagu atau podcast',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Text(
                  "Jelajahi Semua",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical, // ScrollView vertikal
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis
                              .horizontal, // ScrollView horizontal dalam ScrollView vertikal
                          child: Row(
                            children: [
                              RowAlbumCard(
                                label: "Top 50 - Global",
                                image: AssetImage("assets/top50.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Best Mode",
                                image: AssetImage("assets/album9.jpg"),
                              ),
                              // Tambahkan widget lainnya sesuai kebutuhan
                            ],
                          ),
                        ),
                        SizedBox(
                            height:
                                16), // Jarak vertikal antara ScrollView horizontal dan konten lainnya
                        SingleChildScrollView(
                          scrollDirection: Axis
                              .horizontal, // ScrollView horizontal dalam ScrollView vertikal
                          child: Row(
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
                              // Tambahkan widget lainnya sesuai kebutuhan
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        SingleChildScrollView(
                          scrollDirection: Axis
                              .horizontal, // ScrollView horizontal dalam ScrollView vertikal
                          child: Row(
                            children: [
                              RowAlbumCard(
                                label: "Top 50 - Global",
                                image: AssetImage("assets/top50.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Best Mode",
                                image: AssetImage("assets/album9.jpg"),
                              ),
                              // Tambahkan widget lainnya sesuai kebutuhan
                            ],
                          ),
                        ),
                        SizedBox(
                            height:
                                16), // Jarak vertikal antara ScrollView horizontal dan konten lainnya
                        SingleChildScrollView(
                          scrollDirection: Axis
                              .horizontal, // ScrollView horizontal dalam ScrollView vertikal
                          child: Row(
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
                              // Tambahkan widget lainnya sesuai kebutuhan
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        SingleChildScrollView(
                          scrollDirection: Axis
                              .horizontal, // ScrollView horizontal dalam ScrollView vertikal
                          child: Row(
                            children: [
                              RowAlbumCard(
                                label: "Top 50 - Global",
                                image: AssetImage("assets/top50.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Best Mode",
                                image: AssetImage("assets/album9.jpg"),
                              ),
                              // Tambahkan widget lainnya sesuai kebutuhan
                            ],
                          ),
                        ),
                        SizedBox(
                            height:
                                16), // Jarak vertikal antara ScrollView horizontal dan konten lainnya
                        SingleChildScrollView(
                          scrollDirection: Axis
                              .horizontal, // ScrollView horizontal dalam ScrollView vertikal
                          child: Row(
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
                              // Tambahkan widget lainnya sesuai kebutuhan
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final String label;
  final AssetImage image;

  const RowAlbumCard({
    required this.label,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: 120, // Sesuaikan dengan tinggi yang Anda inginkan
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
