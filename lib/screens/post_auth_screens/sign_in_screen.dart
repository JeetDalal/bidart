import 'package:art_bid/provider/form_detail_provider.dart';
import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'widgets/next_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final indexProvider = Provider.of<FormDetailProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter your email address",
            style: titleStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Sign in with your email. If you dont have an Bidcart account yet we'll get one setup.",
            style: subtitleStyle,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Your email",
            style: labelStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "eg: abcd@gmail.com",
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
            height: 30,
          ),
          const NextButton(),
          const SizedBox(
            height: 60,
          ),
          Row(
            children: <Widget>[
              Expanded(child: Divider()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("OR"),
              ),
              Expanded(child: Divider()),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(color: inactiveIndicatorColor, width: 2)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: SvgPicture.asset('assets/images/Google.svg'),
                  ),
                  Text(
                    "Continue with Google",
                    style: labelStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(color: inactiveIndicatorColor, width: 2)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: SvgPicture.asset('assets/images/Facebook.svg'),
                  ),
                  Text(
                    "Continue with Facebook",
                    style: labelStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(color: inactiveIndicatorColor, width: 2)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: SvgPicture.asset('assets/images/Apple.svg'),
                  ),
                  Text(
                    "Continue with Apple",
                    style: labelStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
