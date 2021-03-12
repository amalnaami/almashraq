import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

Widget rateStars(double size) {
  return SmoothStarRating(
      allowHalfRating: false,
      onRated: (v) {},
      starCount: 5,
      rating: size,
      size: 20,
      defaultIconData: Icons.star_outline_rounded,
      filledIconData: Icons.star_rounded,
      isReadOnly: true,
      color: Color(0xFFFFE32A),
      borderColor: Color(0xFFD4D4D4),
      spacing: -3);
}
