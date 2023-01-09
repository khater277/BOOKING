import 'package:booking/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  const CustomNetworkImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      image: imageUrl,
      placeholder: AppImages.loading,
      imageErrorBuilder: (context, error, stackTrace) {
        return Image.asset(AppImages.error);
      },
      placeholderFit: BoxFit.contain,
      fit: BoxFit.fill,
    );
  }
}
