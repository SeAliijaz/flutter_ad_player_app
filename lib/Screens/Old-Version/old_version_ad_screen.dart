/*
1. This Code is for Older Version of Unity_Ads_Plugin
2. Old Version: unity_ads_plugin: ^0.2.1
*/

// // import 'package:flutter/material.dart';
// // import 'package:unity_ads_plugin/unity_ads.dart';

// // class AdScreen extends StatefulWidget {
// //   const AdScreen({Key? key}) : super(key: key);

// //   @override
// //   State<AdScreen> createState() => _AdScreenState();
// // }

// // class _AdScreenState extends State<AdScreen> {
// //   @override
// //   void initState() {
// //     UnityAds.init(gameId: "5397527", testMode: true);
// //     // 5397527
// //     // Rewarded_Android
// //     super.initState();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('AdScreen'),
// //       ),
// //       body: Container(
// //         height: MediaQuery.of(context).size.height,
// //         width: MediaQuery.of(context).size.width,
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.center,
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             ElevatedButton(
// //               onPressed: () {
// //                 UnityAds.showVideoAd(
// //                     placementId: "Rewarded_Android",
// //                     listener: (state, args) {
// //                       if (state == UnityAdState.complete) {
// //                         print("Ad is Completed");
// //                         return ScaffoldMessenger.of(context).showSnackBar(
// //                           const SnackBar(content: Text("Ad is completed")),
// //                         );
// //                       } else if (state == UnityAdState.skipped) {}
// //                     });
// //               },
// //               child: Text("Show Rewarded Ad"),
// //             ),
// //             ElevatedButton(
// //               onPressed: () {},
// //               child: Text(
// //                 "Show Interstitial Ad",
// //               ),
// //             ),
// //             ElevatedButton(
// //               onPressed: () {},
// //               child: Text(
// //                 "Show Banner Ad",
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:unity_ads_plugin/unity_ads.dart';

// class OldVersionAdScreen extends StatefulWidget {
//   const OldVersionAdScreen({Key? key}) : super(key: key);

//   @override
//   State<OldVersionAdScreen> createState() => _OldVersionAdScreenState();
// }

// class _OldVersionAdScreenState extends State<OldVersionAdScreen> {
//   @override
//   void initState() {
//     UnityAds.init(gameId: "5397527", testMode: true);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('OldVersionAdScreen'),
//       ),
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 UnityAds.showVideoAd(
//                   placementId: "Rewarded_Android",
//                   listener: (state, args) {
//                     if (state == UnityAdState.complete) {
//                       print("Rewarded Ad is Completed");
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                             content: Text("Rewarded Ad is completed")),
//                       );
//                     } else if (state == UnityAdState.skipped) {
//                       print("Rewarded Ad was skipped");
//                     }
//                   },
//                 );
//               },
//               child: Text("Show Rewarded Ad"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 UnityAds.showVideoAd(
//                   placementId: "Interstitial_Android",
//                   listener: (state, args) {
//                     if (state == UnityAdState.complete) {
//                       print("Interstitial Ad is Completed");
//                       return ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                             content: Text("Interstitial Ad is completed")),
//                       );
//                     } else if (state == UnityAdState.skipped) {
//                       print("Interstitial Ad was skipped");
//                     }
//                   },
//                 );
//               },
//               child: Text("Show Interstitial Ad"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 UnityBannerAd(
//                   placementId: "Banner_Android",
//                   listener: (state, args) {
//                     if (state == UnityAdState.complete) {
//                       print("Banner Ad is Completed");
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text("Banner Ad is Completed")),
//                       );
//                     }
//                   },
//                 );
//               },
//               child: Text("Show Banner Ad"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
