import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/fast_laugh/widgets/video_list_item.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/video_widget.dart';

class EveryOnesWatchigWidget extends StatelessWidget {
  const EveryOnesWatchigWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          "Friends",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight20,
        const Text(
          "This hit sitcom follows the merry misadventures of six 20-something pals  as they navigate th e pitfalls of work,life and love in 1990s manhattan.",
          style: TextStyle(
            color: kGreyColor,
          ),
        ),
        kHeight50,
        const VideoWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            VideoActions(
              icon: Icons.share,
              title: "Share",
              iconSize: 25,
              fontSize: 16,
            ),
            kWidth,
            VideoActions(
              icon: Icons.add,
              title: "My List",
              iconSize: 25,
              fontSize: 16,
            ),
            kWidth,
            VideoActions(
              icon: Icons.play_arrow,
              title: "PlaY",
              iconSize: 25,
              fontSize: 16,
            ),
            kWidth
          ],
        )
      ],
    );
  }
}
