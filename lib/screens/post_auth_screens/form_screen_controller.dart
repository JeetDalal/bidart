import 'package:art_bid/provider/form_detail_provider.dart';
import 'package:art_bid/screens/post_auth_screens/budget_screen.dart';
import 'package:art_bid/screens/post_auth_screens/create_password_screen.dart';
import 'package:art_bid/screens/post_auth_screens/follow_artist_screen.dart';
import 'package:art_bid/screens/post_auth_screens/follow_category_screen.dart';
import 'package:art_bid/screens/post_auth_screens/name_screen.dart';
import 'package:art_bid/screens/post_auth_screens/sign_in_screen.dart';
import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormScreenController extends StatelessWidget {
  const FormScreenController({super.key});

  @override
  Widget build(BuildContext context) {
    final indexProvider = Provider.of<FormDetailProvider>(context);

    Widget getScreen(int index) {
      switch (index) {
        case 0:
          return const SignInScreen();
        case 1:
          return const CreatePasswordScreen();
        case 2:
          return const NameScreen();
        case 3:
          return const FollowArtistScreen();
        case 4:
          return const FollowCategoryScreen();
        case 5:
          return const BudgetScreen();
        default:
          return Container();
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(6, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 5,
                      bottom: 40,
                    ),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 70) / 6,
                      height: 4,
                      decoration: BoxDecoration(
                        color: index <= indexProvider.index
                            ? primaryColor
                            : inactiveIndicatorColor,
                      ),
                    ),
                  );
                }),
              ),
              getScreen(indexProvider.index)
            ],
          ),
        ),
      ),
    );
  }
}
