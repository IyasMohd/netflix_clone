import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/screen_home.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 190,
              width: 20,
            ),
            Container(
              width: 130,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: kRadius15,
                image: const DecorationImage(
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          left: 5,
          child: BorderedText(
            strokeWidth: 3,
            child: Text('$index',
                textAlign: TextAlign.left,
                style: GoogleFonts.oswald(
                  color: Colors.transparent,
                  fontSize: 120,
                  fontWeight: FontWeight.w900,
                  decorationColor: kWhiteColor,
                )),
          ),
        ),
      ],
    );
  }
}
