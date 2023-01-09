import 'package:booking/core/shared_widgets/text.dart';
import 'package:flutter/material.dart';

class HotelDetailsScreen extends StatelessWidget {
  const HotelDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: LargeHeadText(text: "Hotel Details Screen")),
    );
  }
}
