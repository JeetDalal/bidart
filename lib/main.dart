import 'package:art_bid/provider/form_detail_provider.dart';
import 'package:art_bid/screens/artist_details_screen/artists_details_screen.dart';
import 'package:art_bid/screens/home_screen/home_screen.dart';
import 'package:art_bid/screens/inbox_screen/inbox_screen.dart';
import 'package:art_bid/screens/screen_controller/screen_controller.dart';
import 'package:art_bid/screens/search_screen/search_screen.dart';
// import 'package:art_bid/screens/splash_screen.dart';
import 'package:art_bid/screens/view_all_screens/trending_artists_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'screens/post_auth_screens/form_screen_controller.dart';
// import 'screens/post_auth_screens/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FormDetailProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreenController(),
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          TrendingArtistsScreen.routeName: (context) => TrendingArtistsScreen(),
          ArtistsDetailsScreen.routeName: (context) => ArtistsDetailsScreen(),
          InboxScreen.routeName: (context) => InboxScreen()
        },
      ),
    );
  }
}
