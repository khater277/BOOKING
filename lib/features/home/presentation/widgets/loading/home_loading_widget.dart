import 'package:booking/core/shared_widgets/text.dart';
import 'package:flutter/material.dart';

class HomeLoadingWidget extends StatelessWidget {
  const HomeLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: LargeHeadText(text: "LOADING STATE"));
  }
}
