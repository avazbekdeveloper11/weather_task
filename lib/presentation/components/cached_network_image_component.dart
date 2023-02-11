import 'package:cached_network_image/cached_network_image.dart';
import 'package:weather_app/presentation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CachedImageComponent extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;
  final double borderRadius;

  const CachedImageComponent({
    Key? key,
    required this.height,
    required this.width,
    required this.imageUrl,
    this.borderRadius = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: AppColors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: const Color(0xFFF1EFEF),
            highlightColor: const Color(0xffE7E5E5),
            period: const Duration(seconds: 2),
            direction: ShimmerDirection.ltr,
            child: Container(
              height: height,
              width: width,
              color: Colors.white,
            ),
          ),
          errorWidget: (context, url, error) => Center(
            child: Image.asset(
              'assets/images/default_image.jpg',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
