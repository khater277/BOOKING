import 'package:booking/core/shared_widgets/text.dart';
import 'package:flutter/material.dart';

class HomeErrorWidget extends StatelessWidget {
  const HomeErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: LargeHeadText(text: "ERROR STATE"));
  }
}
