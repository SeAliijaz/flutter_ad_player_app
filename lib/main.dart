import 'package:flutter/material.dart';
import 'package:flutter_ad_player_app/Screens/Latest-Version/latest_version_ad_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unity Ads Example',
      home: UnityAdsExample(),
    );
  }
}
