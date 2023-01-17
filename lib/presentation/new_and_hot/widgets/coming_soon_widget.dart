import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/fast_laugh/widgets/video_list_item.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        SizedBox(
          width: 60,
          height: 500,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "FEB",
                  style: TextStyle(
                    color: kGreyColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "11",
                  style: TextStyle(
                    letterSpacing: 6,
                    color: kWhiteColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
        ),
        SizedBox(
          width: size.width - 60,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              kHeight,
              Row(
                children: [
                  const Text(
                    "Tall Girl 2",
                    style: TextStyle(
                      letterSpacing: -5,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: const [
                        VideoActions(
                          icon: Icons.notifications_outlined,
                          title: "Remind Me",
                          iconSize: 25,
                          fontSize: 14,
                        ),
                        kWidth,
                        kWidth,
                        VideoActions(
                          icon: Icons.info_outlined,
                          title: "Info",
                          iconSize: 25,
                          fontSize: 14,
                        ),
                        kWidth
                      ],
                    ),
                  ),
                ],
              ),
              kHeight,
              const Text(
                "Coming on Friday",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight20,
              const Text(
                "Tall Girl 2",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight20,
              const Text(
                "Landing the lead in the school musical is a dream come true for jodi, until the pressure sends her confidence - and her relationship - into a tailspin",
                style: TextStyle(
                  color: kGreyColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
