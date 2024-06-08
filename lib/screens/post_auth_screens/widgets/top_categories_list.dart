import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

class TopCategoriesListCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String subtitle;
  bool isToggled;
  final int index;
  final Function(int) onToggle;
  TopCategoriesListCard({
    super.key,
    required this.index,
    required this.imageUrl,
    required this.isToggled,
    required this.name,
    required this.subtitle,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onToggle(index),
      title: Text(
        name,
        style: labelStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(
          imageUrl,
        ),
      ),
      trailing: isToggled
          ? Icon(Icons.radio_button_on)
          : Icon(Icons.radio_button_off),
    );
  }
}
