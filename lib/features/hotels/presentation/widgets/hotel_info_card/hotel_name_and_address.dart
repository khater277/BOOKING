import 'package:booking/core/shared_widgets/text.dart';
import 'package:flutter/material.dart';

class HotelNameAndAddress extends StatelessWidget {
  final double? nameSize;
  final double? addressSize;
  const HotelNameAndAddress({super.key, this.nameSize, this.addressSize});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              child: LargeHeadText(
            text: "Grand Royal Hotel",
            maxLines: 2,
            size: nameSize,
          )),
          Flexible(
              child: SecondaryText(
            text: "Wembley, London",
            isLight: true,
            isButton: true,
            maxLines: 2,
            size: addressSize,
          )),
        ],
      ),
    );
  }
}
