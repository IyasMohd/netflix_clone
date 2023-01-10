import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: ((context, int newindex, _) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: newindex,
          onTap: ((index) {
            indexChangeNotifier.value = index;
          }),
          backgroundColor: kBackgroundColor,
          selectedItemColor: kWhiteColor,
          unselectedItemColor: kGreyColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections_outlined),
              label: 'New & Hot',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_emotions_outlined),
              label: 'Fast Laughs',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download_outlined),
              label: 'Dowloads',
            )
          ],
        );
      }),
    );
  }
}
