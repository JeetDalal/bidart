import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

class TopArtistListCard extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String subtitle;
  bool isToggled;
  final int index;
  final Function(int) onToggle;
  TopArtistListCard({
    super.key,
    required this.index,
    required this.imageUrl,
    required this.isToggled,
    required this.name,
    required this.subtitle,
    required this.onToggle,
  });

  @override
  State<TopArtistListCard> createState() => _TopArtistListCardState();
}

class _TopArtistListCardState extends State<TopArtistListCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => widget.onToggle(widget.index),
      title: Text(
        widget.name,
        style: labelStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(widget.subtitle),
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(
          widget.imageUrl,
        ),
      ),
      trailing: widget.isToggled
          ? Icon(Icons.radio_button_on)
          : Icon(Icons.radio_button_off),
    );
  }
}
