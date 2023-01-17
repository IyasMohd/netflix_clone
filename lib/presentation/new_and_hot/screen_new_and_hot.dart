import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/every_ones_watching_widget.dart';

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

  Widget _buildComingSoon() {
    return ListView.builder(
      itemBuilder: (context, index) => const ComingSoonWidget(),
      itemCount: 10,
      shrinkWrap: true,
    );
  }

  Widget _buildEveryoneswatching() {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => const EveryOnesWatchigWidget(),
      itemCount: 10,
    );
  }
}
