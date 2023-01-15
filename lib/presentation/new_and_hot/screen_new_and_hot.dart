import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/fast_laugh/widgets/video_list_item.dart';

class ScreenNewandHot extends StatelessWidget {
  const ScreenNewandHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Downloads',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            actions: const [
              Icon(
                Icons.cast,
                color: kWhiteColor,
                size: 30,
              ),
              kWidth,

              CircleAvatar(
                radius: 15,
              ),
              // Container(
              //   height: 3,
              //   width: 30,
              //   color: Colors.blue,
              // ),
              kWidth,
            ],
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: kBlackColor,
                isScrollable: true,
                splashBorderRadius: kRadius30,
                // indicatorPadding: const EdgeInsets.only(top: 10),
                // labelPadding: const EdgeInsets.only(top: 10),
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelColor: kWhiteColor,
                indicator: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: kRadius30,
                ),
                tabs: const [
                  Tab(
                    text: "🍟 Coming Soon",
                  ),
                  Tab(
                    text: "👀 Everyone's watching",
                  )
                ]),
          ),
        ),
        body: TabBarView(children: [
          _buildComingSoon(),
          _buildEveryoneswatching(),
        ]),
      ),
    );
  }

  Widget _buildEveryoneswatching() {
    return ListView.builder(
      itemBuilder: (context, index) => const ComingSoonWidget(),
      itemCount: 10,
      shrinkWrap: true,
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemBuilder: (context, index) => const ComingSoonWidget(),
      itemCount: 10,
      shrinkWrap: true,
    );
  }
}

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
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Image.network(
                      newandHotTempImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        radius: 17,
                        backgroundColor: kBlackColor.withOpacity(0.5),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.volume_off,
                            color: kWhiteColor,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
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
