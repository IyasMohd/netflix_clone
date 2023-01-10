import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.header}) : super(key: key);

  final Widget header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          kWidth,
          header,
          const Spacer(),
          const Icon(
            Icons.cast,
            color: kWhiteColor,
            size: 30,
          ),
          kWidth,
          Container(
            height: 30,
            width: 30,
            color: Colors.blue,
          ),
          kWidth
        ],
      ),
    );
  }
}
