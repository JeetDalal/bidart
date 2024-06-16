import 'package:art_bid/screens/view_all_screens/view_popular_artwork.dart';
import 'package:flutter/material.dart';

class ArtworkGridViewWidget extends StatelessWidget {
  const ArtworkGridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 8,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) {
          return GridLayoutWidget();
        },
      ),
    );
  }
}
