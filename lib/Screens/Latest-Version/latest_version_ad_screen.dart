// /*
// 1. This Code is for Letest Version of Unity_Ads_Plugin
// 2. Old Version: unity_ads_plugin: ^0.3.8
// */
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class UnityAdsExample extends StatefulWidget {
  const UnityAdsExample({Key? key}) : super(key: key);

  @override
  _UnityAdsExampleState createState() => _UnityAdsExampleState();
}

class _UnityAdsExampleState extends State<UnityAdsExample> {
  bool _showBanner = false;
  Map<String, bool> placements = {
    AdManager.interstitialVideoAdPlacementId: false,
    AdManager.rewardedVideoAdPlacementId: false,
  };

  @override
  void initState() {
    super.initState();
    // Initialize Unity Ads SDK
    UnityAds.init(
      gameId: AdManager.gameId,
      testMode: true,
      onComplete: () {
        print('Initialization Complete');
        _loadAds(); // Load ads after initialization
      },
      onFailed: (error, message) =>
          print('Initialization Failed: $error $message'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showBanner = !_showBanner;
                  });
                },
                child: Text(_showBanner ? 'Hide Banner' : 'Show Banner'),
              ),
              ElevatedButton(
                onPressed: () {
                  if (placements[AdManager.rewardedVideoAdPlacementId] ==
                      true) {
                    _showAd(AdManager.rewardedVideoAdPlacementId);
                  } else {
                    print('Rewarded Video Ad not loaded');
                  }
                },
                child: const Text('Show Rewarded Video'),
              ),
              ElevatedButton(
                onPressed:
                    placements[AdManager.interstitialVideoAdPlacementId] == true
                        ? () =>
                            _showAd(AdManager.interstitialVideoAdPlacementId)
                        : null,
                child: const Text('Show Interstitial Video'),
              ),
            ],
          ),
          if (_showBanner)
            UnityBannerAd(
              placementId: AdManager.bannerAdPlacementId,
              onLoad: (placementId) => print('Banner loaded: $placementId'),
              onClick: (placementId) => print('Banner clicked: $placementId'),
              onFailed: (placementId, error, message) =>
                  print('Banner Ad $placementId failed: $error $message'),
            ),
        ],
      ),
    );
  }

  void _loadAds() {
    for (var placementId in placements.keys) {
      _loadAd(placementId);
    }
  }

  void _loadAd(String placementId) {
    UnityAds.load(
      placementId: placementId,
      onComplete: (placementId) {
        print('Load Complete $placementId');
        setState(() {
          placements[placementId] = true;
        });
      },
      onFailed: (placementId, error, message) =>
          print('Load Failed $placementId: $error $message'),
    );
  }

  void _showAd(String placementId) {
    setState(() {
      placements[placementId] = false;
    });
    UnityAds.showVideoAd(
      placementId: placementId,
      onComplete: (placementId) {
        print('Video Ad $placementId completed');
        _loadAd(placementId);
        // Show completion message (example: SnackBar)
        return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Video Ad Completed: $placementId')),
        );
      },
      onFailed: (placementId, error, message) {
        print('Video Ad $placementId failed: $error $message');
        _loadAd(placementId);
      },
      onStart: (placementId) => print('Video Ad $placementId started'),
      onClick: (placementId) => print('Video Ad $placementId click'),
      onSkipped: (placementId) {
        print('Video Ad $placementId skipped');
        _loadAd(placementId);
      },
    );
  }
}

class AdManager {
  static String get gameId {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return '5397527';
    }
    // Add game IDs for other platforms if needed
    return '';
  }

  static String get bannerAdPlacementId {
    return 'Banner_Android';
  }

  static String get interstitialVideoAdPlacementId {
    return 'Interstitial_Android';
  }

  static String get rewardedVideoAdPlacementId {
    return 'Rewarded_Android';
  }
}

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:unity_ads_plugin/unity_ads_plugin.dart';

// class UnityAdsExampleApp extends StatelessWidget {
//   const UnityAdsExampleApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Unity Ads Example',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Unity Ads Example'),
//         ),
//         body: const SafeArea(
//           child: UnityAdsExample(),
//         ),
//       ),
//     );
//   }
// }

// class UnityAdsExample extends StatefulWidget {
//   const UnityAdsExample({Key? key}) : super(key: key);

//   @override
//   _UnityAdsExampleState createState() => _UnityAdsExampleState();
// }

// class _UnityAdsExampleState extends State<UnityAdsExample> {
//   bool _showBanner = false;
//   Map<String, bool> placements = {
//     AdManager.interstitialVideoAdPlacementId: false,
//     AdManager.rewardedVideoAdPlacementId: false,
//   };

//   @override
//   void initState() {
//     super.initState();
//     UnityAds.init(
//       gameId: AdManager.gameId,
//       testMode: true,
//       onComplete: () {
//         print('Initialization Complete');
//         _loadAds();
//       },
//       onFailed: (error, message) =>
//           print('Initialization Failed: $error $message'),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _showBanner = !_showBanner;
//                   });
//                 },
//                 child: Text(_showBanner ? 'Hide Banner' : 'Show Banner'),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   if (placements[AdManager.rewardedVideoAdPlacementId] ==
//                       true) {
//                     _showAd(AdManager.rewardedVideoAdPlacementId);
//                   } else {
//                     print('Rewarded Video Ad not loaded');
//                   }
//                 },
//                 child: const Text('Show Rewarded Video'),
//               ),
//               ElevatedButton(
//                 onPressed:
//                     placements[AdManager.interstitialVideoAdPlacementId] == true
//                         ? () =>
//                             _showAd(AdManager.interstitialVideoAdPlacementId)
//                         : null,
//                 child: const Text('Show Interstitial Video'),
//               ),
//             ],
//           ),
//           if (_showBanner)
//             UnityBannerAd(
//               placementId: AdManager.bannerAdPlacementId,
//               onLoad: (placementId) => print('Banner loaded: $placementId'),
//               onClick: (placementId) => print('Banner clicked: $placementId'),
//               onFailed: (placementId, error, message) =>
//                   print('Banner Ad $placementId failed: $error $message'),
//             ),
//         ],
//       ),
//     );
//   }

//   void _loadAds() {
//     for (var placementId in placements.keys) {
//       _loadAd(placementId);
//     }
//   }

//   void _loadAd(String placementId) {
//     UnityAds.load(
//       placementId: placementId,
//       onComplete: (placementId) {
//         print('Load Complete $placementId');
//         setState(() {
//           placements[placementId] = true;
//         });
//       },
//       onFailed: (placementId, error, message) =>
//           print('Load Failed $placementId: $error $message'),
//     );
//   }

//   void _showAd(String placementId) {
//     setState(() {
//       placements[placementId] = false;
//     });
//     UnityAds.showVideoAd(
//       placementId: placementId,
//       onComplete: (placementId) {
//         print('Video Ad $placementId completed');
//         _loadAd(placementId);
//       },
//       onFailed: (placementId, error, message) {
//         print('Video Ad $placementId failed: $error $message');
//         _loadAd(placementId);
//       },
//       onStart: (placementId) => print('Video Ad $placementId started'),
//       onClick: (placementId) => print('Video Ad $placementId click'),
//       onSkipped: (placementId) {
//         print('Video Ad $placementId skipped');
//         _loadAd(placementId);
//       },
//     );
//   }
// }

// class AdManager {
//   static String get gameId {
//     if (defaultTargetPlatform == TargetPlatform.android) {
//       return '5397527';
//     }
//     return '';
//   }

//   static String get bannerAdPlacementId {
//     return 'Banner_Android';
//   }

//   static String get interstitialVideoAdPlacementId {
//     return 'Interstitial_Android';
//   }

//   static String get rewardedVideoAdPlacementId {
//     return '5397527';
//   }
// }
