import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/popular_artwork_section.dart';
import 'widgets/trending_artist_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1579865346865-9223701ba92e?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHBlcnNvbiUyMGltYWdlfGVufDB8fDB8fHww'),
                          radius: 25,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hey Julia",
                              style: titleStyle.copyWith(fontSize: 20),
                            ),
                            Text(
                              "Let's make a bid!",
                              style: labelStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: primaryColor.withOpacity(0.5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              color: primaryColor,
                              Icons.notifications,
                            ),
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      size: 40,
                      color: primaryColor.withOpacity(0.4),
                    ),
                    hintText: "search Artist",
                    hintStyle: placeHolderStyle,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: inactiveIndicatorColor,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                      ),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: inactiveIndicatorColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                PopularArtworkSection(),
                const SizedBox(
                  height: 20,
                ),
                TrendingArtistSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
