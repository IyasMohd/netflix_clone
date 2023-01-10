import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card_list.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg";

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                      separatorBuilder: (context, index) => kWidth,
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
      ),
    );
  }
}
