import 'dart:developer';

import 'package:art_bid/screens/home_screen/widgets/popular_art_card_widget.dart';
import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/list_layout_card_widget.dart';

enum DisplayOptions { list, grid }

class ViewAllPopularArtwork extends StatefulWidget {
  ViewAllPopularArtwork({super.key});

  @override
  State<ViewAllPopularArtwork> createState() => _ViewAllPopularArtworkState();
}

class _ViewAllPopularArtworkState extends State<ViewAllPopularArtwork> {
  DisplayOptions displayOption = DisplayOptions.grid;
  var visText = "Abstract face woman";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_alt,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Artwork",
                    style: titleStyle.copyWith(fontSize: 28),
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        displayOption == DisplayOptions.grid
                            ? CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 20,
                                child: Icon(
                                  Icons.grid_3x3,
                                  color: Colors.white,
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    displayOption = DisplayOptions.grid;
                                  });
                                },
                                child: Padding(
                                  padding: displayOption == DisplayOptions.grid
                                      ? EdgeInsets.zero
                                      : const EdgeInsets.only(left: 5.0),
                                  child: Icon(
                                    Icons.grid_3x3,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                        const SizedBox(
                          width: 5,
                        ),
                        displayOption == DisplayOptions.list
                            ? CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 20,
                                child: Icon(
                                  Icons.list_alt,
                                  color: Colors.white,
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    displayOption = DisplayOptions.list;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Icon(
                                    Icons.list_alt_outlined,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              displayOption == DisplayOptions.grid
                  ? GridLayoutWidget()
                  : ListLayoutWidget(visText: visText)
            ],
          ),
        ),
      ),
    );
  }
}

class GridLayoutWidget extends StatelessWidget {
  const GridLayoutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 0.5,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return PopularArtCardWidget();
        },
      ),
    );
  }
}

class ListLayoutWidget extends StatelessWidget {
  const ListLayoutWidget({
    super.key,
    required this.visText,
  });

  final String visText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 10,
            ),
            child: ListLayoutCardWidget(visText: visText),
          );
        },
      ),
    );
  }
}
