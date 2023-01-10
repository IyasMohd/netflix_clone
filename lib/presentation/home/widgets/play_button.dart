import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.only(left: 10, right: 10),
          backgroundColor: kWhiteColor),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        color: kBlackColor,
        size: 25,
      ),
      label: const Text(
        "Play",
        style: TextStyle(
          color: kBlackColor,
          fontSize: 20,
        ),
      ),
    );
  }
}
