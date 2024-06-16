import 'package:art_bid/screens/search_screen/widgets/artwork_grid_widget.dart';
import 'package:art_bid/screens/view_all_screens/view_popular_artwork.dart';
import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Trending Artists",
            style:
                labelStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: _searchController,
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
                height: 30,
              ),
              _searchController.text == ""
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Recent search",
                              style: labelStyle.copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 18),
                            ),
                            Text(
                              "Clear All",
                              style: labelStyle,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TagGridView(
                          initialTags: [
                            'digital art',
                            'creative',
                            'cool',
                            'elegant',
                            'unique',
                          ],
                        ),
                      ],
                    )
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          TabBar(
                            tabs: [
                              Tab(text: 'Artwork'),
                              Tab(text: 'Artist'),
                            ],
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            indicatorColor: Colors.black,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.548,
                            child: TabBarView(
                              children: [
                                GridLayoutWidget(),
                                GridLayoutWidget()
                                // ArtistGridViewWidget(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

class TagGridView extends StatefulWidget {
  final List<String> initialTags;

  TagGridView({required this.initialTags});

  @override
  _TagGridViewState createState() => _TagGridViewState();
}

class _TagGridViewState extends State<TagGridView> {
  late List<String> tags;

  @override
  void initState() {
    super.initState();
    tags = widget.initialTags;
  }

  void _removeTag(String tag) {
    setState(() {
      tags.remove(tag);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // gap between adjacent tags
      runSpacing: 4.0, // gap between lines
      children: tags.map((tag) {
        return Chip(
          label: Text(tag),
          deleteIcon: Icon(Icons.close),
          onDeleted: () {
            _removeTag(tag);
          },
        );
      }).toList(),
    );
  }
}
