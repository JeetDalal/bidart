import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

class TrendingArtistsScreen extends StatefulWidget {
  const TrendingArtistsScreen({super.key});

  static const routeName = '/trending-artists';

  @override
  State<TrendingArtistsScreen> createState() => _TrendingArtistsScreenState();
}

class _TrendingArtistsScreenState extends State<TrendingArtistsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Trending Artists",
          style: labelStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
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
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 30,
                        offset: Offset(0, 12),
                      )
                    ]),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1501622549218-2c3ef86627cb?q=80&w=2946&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.black,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(
                                        (index + 1).toString(),
                                        style: labelStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://images.unsplash.com/photo-1530890792-e8e5d92a8606?q=80&w=1535&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Wilson korsgoard',
                                        style: labelStyle.copyWith(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '128,182 followers',
                                        style: labelStyle.copyWith(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 8),
                                    child: Container(
                                      width: 120,
                                      color: Colors.black,
                                      child: Center(
                                          child: Text(
                                        "Follow",
                                        style: labelStyle.copyWith(
                                          color: Colors.white,
                                        ),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}
