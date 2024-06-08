import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Logo.png'),
                const SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Bid',
                    style: titleStyle.copyWith(fontSize: 100),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Art',
                        style: titleStyle.copyWith(
                          fontSize: 100,
                          color: artTextColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // const SizedBox(height: 150),
        ],
      ),
    );
  }
}
