import 'package:art_bid/screens/post_auth_screens/widgets/next_button.dart';
import 'package:art_bid/screens/post_auth_screens/widgets/top_categories_list.dart';
import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/top_artists_list_card.dart';

class FollowCategoryScreen extends StatefulWidget {
  const FollowCategoryScreen({super.key});

  @override
  State<FollowCategoryScreen> createState() => _FollowCategoryScreenState();
}

class _FollowCategoryScreenState extends State<FollowCategoryScreen> {
  List<bool> _iconToggles = List.generate(10, (index) => false);

  void _toggleIcon(int index) {
    setState(() {
      _iconToggles[index] = !_iconToggles[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Follow categories of art that most interest you",
            style: titleStyle.copyWith(fontSize: 28),
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
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: inactiveIndicatorColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Top Artists on BidArt",
            style: labelStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2 - 20,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: TopCategoriesListCard(
                    index: index,
                    isToggled: _iconToggles[index],
                    onToggle: _toggleIcon,
                    imageUrl:
                        'https://images.unsplash.com/photo-1665779912168-c6d48ec98dcb?q=80&w=2864&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    name: "Haylie Herwitz",
                    subtitle: "8.5K Total Artwork",
                  ),
                );
              },
            ),
          ),
          NextButton(),
        ],
      ),
    );
  }
}
