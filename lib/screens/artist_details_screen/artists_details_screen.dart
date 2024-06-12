import 'package:art_bid/screens/view_all_screens/view_popular_artwork.dart';
import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

class ArtistsDetailsScreen extends StatelessWidget {
  const ArtistsDetailsScreen({super.key});

  static const routeName = '/artists-details-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Detail Artist",
          style: labelStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1530890792-e8e5d92a8606?q=80&w=1535&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                  ),
                  const SizedBox(
                    width: 21,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "180",
                                  style: labelStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text("Works",
                                    style: labelStyle.copyWith(
                                        color: Colors.grey)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: VerticalDivider(
                              color: Colors.grey.withOpacity(0.3),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "128K",
                                  style: labelStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text("Followers",
                                    style: labelStyle.copyWith(
                                        color: Colors.grey)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: VerticalDivider(
                              color: Colors.grey.withOpacity(0.3),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "2K",
                                  style: labelStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Following",
                                  style:
                                      labelStyle.copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Wilson Korsgourd",
                style: titleStyle.copyWith(fontSize: 20),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_history,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    " American b,1945",
                    style: labelStyle.copyWith(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
                    .substring(0, 180),
                style: labelStyle.copyWith(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2 - 30,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          "Followed",
                          style: labelStyle.copyWith(
                              color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2 - 30,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          "Message",
                          style: labelStyle.copyWith(
                              color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Artworks",
                    style: labelStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.black,
                      ),
                      Text(
                        "sort and filter",
                        style: labelStyle,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GridLayoutWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
