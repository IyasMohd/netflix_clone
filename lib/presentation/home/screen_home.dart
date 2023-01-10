import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/background_card.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card_list.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg";

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

  @override
  Widget build(context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, value, child) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            print(direction);
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: [
                  const BackgroundCard(),
                  kHeight,
                  const MainTitleCardList(
                    title: 'Released in the past year',
                  ),
                  kHeight20,
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MainTitle(
                          title: 'Top 10 TV Shows in India Today',
                        ),
                        kHeight,
                        LimitedBox(
                          maxHeight: 200,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              width: 0.5,
                            ),
                            itemCount: 25,
                            itemBuilder: ((context, index) => NumberCard(
                                  index: index + 1,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  kHeight20,
                  const MainTitleCardList(title: 'Trending Now'),
                  kHeight20,
                  const MainTitleCardList(title: 'Trending Now'),
                  kHeight20,
                  const MainTitleCardList(title: 'Trending Now')
                ],
              ),
              scrollNotifier.value
                  ? Stack(
                      children: [
                        const HomeHeaderWidget(),
                        const SizedBox(),
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                'TV Shows',
                                style: kTextStyle,
                              ),
                              Text(
                                'Movies',
                                style: kTextStyle,
                              ),
                              Text(
                                'Categories',
                                style: kTextStyle,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  : kHeight,
            ],
          ),
        );
      },
    ));
  }
}

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        kHeight20,
        Container(
          width: double.infinity,
          height: 220,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  kBlackColor,
                  Colors.transparent,
                ],
                stops: [
                  0.25,
                  1
                ]),
          ),
        ),
        AppBarWidget(
          header: Image.network(
            "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png",
            height: 40,
            width: 40,
          ),
        ),
      ],
    );
  }
}
