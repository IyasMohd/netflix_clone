import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);

  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: ListView.separated(
        padding:
            const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
        itemCount: _widgetList.length,
        itemBuilder: (context, index) => _widgetList[index],
        separatorBuilder: (context, index) => const SizedBox(
          height: 25,
        ),
      ),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kWidth,
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        Text('Smart Downloads')
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);

  final List imageList = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/nhXjUvOvq7rJlvJFCrZMUUJ9Mn0.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/vDGr1YdrlfbU9wxTOdpf3zChmv9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        kHeight,
        const Text(
          "We will download a personalised selection of\n movies and shows for you, so there's\nalways something to watch on you\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(color: kGreyColor, fontSize: 16),
        ),
        kHeight,
        SizedBox(
            height: size.width,
            width: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  radius: size.width * 0.38,
                ),
                DownloadsImageWidget(
                  imageList: imageList[0],
                  margin: const EdgeInsets.only(left: 170, top: 50),
                  angle: 25,
                  size: Size(size.width * 0.33, size.width * 0.53),
                  radius: 15,
                ),
                DownloadsImageWidget(
                  imageList: imageList[1],
                  margin: const EdgeInsets.only(right: 170, top: 50),
                  angle: -25,
                  size: Size(size.width * 0.33, size.width * 0.53),
                  radius: 15,
                ),
                DownloadsImageWidget(
                  imageList: imageList[2],
                  margin: const EdgeInsets.only(left: 0, top: 30),
                  size: Size(size.width * 0.4, size.width * 0.62),
                  radius: 15,
                )
              ],
            )),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            color: kButtonColorBlue,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          color: kButtonColorWhite,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                color: kBlackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageList,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
