// import 'package:flutter/material.dart';
// import 'package:maktabeh_app/core/size_config.dart';
// import 'package:maktabeh_app/core/style/baseColors.dart';
// import 'package:maktabeh_app/ui/common_widget/BookCard.dart';
// import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
// import 'package:maktabeh_app/ui/common_widget/local_image.dart';
// import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';

// class BooksWriterScreen extends StatefulWidget {
//   @override
//   _BooksWriterScreenState createState() => _BooksWriterScreenState();
// }

// class _BooksWriterScreenState extends State<BooksWriterScreen> {
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig.init(context);

//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         appBar: app_bar('كتب لنفس الكاتب', context),
//         body: SingleChildScrollView(
//             child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(
//                   bottom: SizeConfig.blockSizeVertical,
//                   top: SizeConfig.blockSizeVertical * 3,
//                   left: SizeConfig.blockSizeVertical * 3,
//                   right: SizeConfig.blockSizeVertical * 3),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'كتب لنفس الكاتب',
//                     style: boldStyle.copyWith(color: Colors.black),
//                   ),
//                   Row(
//                     children: [
//                       buildLocalImage('assets/svg/book.svg'),
//                       SizedBox(
//                         width: 4,
//                       ),
//                       Text(
//                         '25',
//                         style: regStyle,
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             Expanded(
//               child: GridView.count(
//                 shrinkWrap: true,
//                 padding: EdgeInsets.only(right: 5, left: 5, bottom: 0),
//                 childAspectRatio: (1 / 1.7),
//                 crossAxisCount: 3,
//                 children: List.generate(10, (index) {
//                   return BookCard();
//                 }),
//               ),
//             ),
//             // InkWell(
//             //   onTap: () {},
//             //   child: Container(
//             //     width: SizeConfig.screenWidth * 0.3,
//             //     height: SizeConfig.screenWidth * 0.3,
//             //     margin: EdgeInsets.symmetric(
//             //         horizontal: SizeConfig.blockSizeHorizontal * 2),
//             //     child: Column(
//             //       children: [
//             //         Expanded(
//             //           flex: 3,
//             //           child: Container(
//             //             width: SizeConfig.screenWidth * 0.3,
//             //             decoration: BoxDecoration(
//             //               borderRadius: BorderRadius.circular(22),
//             //             ),
//             //             child: ClipRRect(
//             //               borderRadius: BorderRadius.circular(8),
//             //               child: Image.asset(
//             //                 "assets/image/2.jpg",
//             //                 height: double.infinity,
//             //                 fit: BoxFit.fill,
//             //                 width: double.infinity,
//             //               ),
//             //             ),
//             //           ),
//             //         ),
//             //         Expanded(
//             //             flex: 1,
//             //             child: Column(
//             //               crossAxisAlignment: CrossAxisAlignment.start,
//             //               children: [
//             //                 Text(
//             //                   'الأوابد',
//             //                   style: regStyle.copyWith(
//             //                       fontSize: 12,
//             //                       color: Colors.black,
//             //                       fontWeight: FontWeight.w500),
//             //                 ),
//             //                 SizedBox(
//             //                     height: SizeConfig.devicePixelRatio),
//             //                 Row(
//             //                   children: [
//             //                     Image.asset(
//             //                       'assets/icons/Profile.png',
//             //                       height: 12,
//             //                       color: Color(0xFF28ABE3),
//             //                     ),
//             //                     SizedBox(width: 4),
//             //                     Text(
//             //                       'عبدالوهاب عزام',
//             //                       style: lightStyle.copyWith(
//             //                           color: Color(0xFF28ABE3),
//             //                           fontSize: 12),
//             //                     )
//             //                   ],
//             //                 ),
//             //                 SizedBox(
//             //                     height: SizeConfig.devicePixelRatio),
//             //                 rateStars(15),
//             //               ],
//             //             ))
//             //       ],
//             //     ),
//             //   ),
//             // );
//           ],
//         )),
//       ),
//     );
//   }
// }
