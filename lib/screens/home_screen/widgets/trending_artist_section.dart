import 'package:art_bid/screens/view_all_screens/trending_artists_screen.dart';
import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

class TrendingArtistSection extends StatelessWidget {
  const TrendingArtistSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Trending Artists",
              style: titleStyle,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(TrendingArtistsScreen.routeName);
              },
              child: Text(
                "View All",
                style: labelStyle,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selena Pervez",
                        style: titleStyle.copyWith(fontSize: 18),
                      ),
                      Text(
                        "1224 followers",
                        style: labelStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
