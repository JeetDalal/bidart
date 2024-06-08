import 'package:art_bid/provider/form_detail_provider.dart';
import 'package:art_bid/screens/home_screen/home_screen.dart';
import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormDetailProvider>(context);
    return GestureDetector(
      onTap: () {
        if (formProvider.index == 5) {
          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
        } else {
          int newIndex = formProvider.index + 1;
          formProvider.setIndex(newIndex);
        }
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width - 40,
        color: primaryColor,
        child: Center(
          child: Text(
            "Next",
            style: titleStyle.copyWith(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
