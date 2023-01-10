import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/fast_laugh/widgets/video_list_item.dart';
import 'package:netflix_clone/presentation/home/widgets/play_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(kMainImage),
            ),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(),
            child: Container(
              width: double.infinity,
              height: 80,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    kBlackColor,
                    Colors.transparent,
                  ],
                  stops: [0.85, 1],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  VideoActions(icon: Icons.add, title: 'My List'),
                  PlayButton(),
                  VideoActions(icon: Icons.info_outline, title: 'Info'),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
