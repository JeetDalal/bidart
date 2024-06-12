import 'dart:ui';

import 'package:art_bid/screens/home_screen/widgets/popular_art_card_widget.dart';
import 'package:art_bid/screens/view_all_screens/view_popular_artwork.dart';
import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

class PopularArtworkSection extends StatelessWidget {
  const PopularArtworkSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular Artwork",
              style: titleStyle,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ViewAllPopularArtwork()));
              },
              child: Text(
                "View All",
                style: labelStyle,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 440,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: PopularArtCardWidget(),
                    ),
                  )),
        ),
      ],
    );
  }
}
