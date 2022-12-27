import 'package:booking/core/shared_widgets/text.dart';
import 'package:flutter/material.dart';

class HotellNameAndAddress extends StatelessWidget {
  const HotellNameAndAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Flexible(
              child: LargeHeadText(
            text: "Grand Royal Hotel",
            maxLines: 2,
          )),
          Flexible(
              child: SecondaryText(
            text: "Wembly, London",
            isLight: true,
            isButton: true,
            maxLines: 2,
          )),
        ],
      ),
    );
  }
}
