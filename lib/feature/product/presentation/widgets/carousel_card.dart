import '../../../../core/asset_constants.dart' as asset;
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  String discount, heading, subtitle, url;
  CarouselCard(this.discount, this.heading, this.subtitle, this.url, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(
                url,
              ),
              alignment: Alignment.centerRight,
              fit: BoxFit.fitHeight)),
      child: Stack(
        children: [
          Container(
            width: 200,
            padding: const EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  discount,
                  style: asset.introStyles(34),
                ),
                Text(
                  heading,
                  style: asset.introStyles(24),
                ),
                Text(subtitle, style: asset.introStyles(16)),
              ],
            ),
          ),
        ],
      ),
    );

  }
}