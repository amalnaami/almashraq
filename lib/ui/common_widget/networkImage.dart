// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:maktabeh_app/core/loaderApp.dart';

// Widget networkImage(String url, {double height, double width}) {
//   return Container(
//     height: height ?? double.infinity,
//     width: width ?? double.infinity,
//     child: CachedNetworkImage(
//       imageUrl: url,
//       imageBuilder: (context, imageProvider) => Image(
//         image: imageProvider,
//         fit: BoxFit.fill,
//         height: height ?? double.infinity,
//         width: width ?? double.infinity,
//       ),
//       placeholder: (context, url) => imageLoder,
//       errorWidget: (context, url, error) {
//         if (url == null) {
//           return Icon(Icons.error);
//         }
//         return null;
//       },
//     ),
//   );
// }
