import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            color: Colors.accents[index % Colors.accents.length],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: kBlackColor.withOpacity(0.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      color: kWhiteColor,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          "https://www.themoviedb.org/t/p/w220_and_h330_face/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg",
                        ),
                      ),
                      VideoActions(
                        icon: Icons.emoji_emotions,
                        title: 'LOL',
                        iconSize: 30,
                        fontSize: 14,
                      ),
                      VideoActions(
                        icon: Icons.add,
                        title: 'My List',
                        iconSize: 30,
                        fontSize: 14,
                      ),
                      VideoActions(
                        icon: Icons.share_rounded,
                        title: 'Share',
                        iconSize: 30,
                        fontSize: 14,
                      ),
                      VideoActions(
                        icon: Icons.play_arrow_rounded,
                        title: 'Play',
                        iconSize: 30,
                        fontSize: 14,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconSize;
  final double fontSize;
  const VideoActions(
      {Key? key,
      required this.icon,
      required this.title,
      this.iconSize = 30,
      this.fontSize = 14})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhiteColor,
            size: iconSize,
          ),
          kWidth,
          Text(
            title,
            style: TextStyle(fontSize: fontSize),
          ),
        ],
      ),
    );
  }
}
