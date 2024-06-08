import 'package:art_bid/screens/post_auth_screens/widgets/next_button.dart';
import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

class NameScreen extends StatelessWidget {
  const NameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What's Your Full Name ?",
            style: titleStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "This is used to build profile and collection on bidArt.",
            style: subtitleStyle,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Full Name",
            style: labelStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "eg: Alvian Eilan",
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
          NextButton(),
        ],
      ),
    );
  }
}
