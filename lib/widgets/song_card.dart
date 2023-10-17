import 'package:flutter/material.dart';
import 'package:mencoba/views/album_view.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  final String deskripsi;

  const SongCard({
    Key? key,
    required this.image,
    required this.deskripsi,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(
              image: image,
            ),
          ),
        );
      },
      child: SizedBox(
        width: 140,
        child: Column(
          children: [
            Image(
              image: image,
              width: 140,
              height: 140,
            ),
            Text(
              deskripsi,
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.caption,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
