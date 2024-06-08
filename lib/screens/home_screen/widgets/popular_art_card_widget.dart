import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

class PopularArtCardWidget extends StatelessWidget {
  const PopularArtCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(4, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.network(
                    'https://static.vecteezy.com/system/resources/previews/022/191/132/non_2x/colorful-cat-white-background-dripping-art-free-photo.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '32h : 14m : 32s',
                        style: labelStyle.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 5,
                left: 5,
                right: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Colourful paint dripping cat",
                    style: titleStyle.copyWith(fontSize: 18),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Text(
                            "Creator",
                            style: labelStyle,
                          ),
                          Text(
                            "@selena",
                            style: labelStyle.copyWith(
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Current Bid",
                              style: labelStyle,
                            ),
                            Text(
                              "\$3,800",
                              style: labelStyle.copyWith(
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "Place Bid",
                          style: labelStyle.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
