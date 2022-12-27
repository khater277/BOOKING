import 'package:booking/core/utils/app_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HotelRating extends StatelessWidget {
  const HotelRating({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      ignoreGestures: true,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      itemSize: AppSize.s20,
      onRatingUpdate: (rating) {
        debugPrint(rating.toString());
      },
    );
  }
}
