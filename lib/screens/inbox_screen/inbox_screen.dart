import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

import '../view_all_screens/view_popular_artwork.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  static const routeName = '/inbox';

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      child: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Inbox",
                    style: titleStyle.copyWith(fontSize: 28),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: inactiveIndicatorColor),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.more_horiz_outlined,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TabBar(
                tabs: [
                  Tab(text: 'Bids'),
                  Tab(text: 'Inbox'),
                  Tab(text: 'Archive'),
                ],
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: TabBarView(
                  children: [
                    GridLayoutWidget(),
                    GridLayoutWidget(),
                    GridLayoutWidget()
                    // ArtistGridViewWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
