import 'package:flutter/material.dart';
import '../../../../../../core/asset_constants.dart' as asset;

class CompletedOrder extends StatelessWidget {
  const CompletedOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(asset.empty_cart_error, width: 300),
            const SizedBox(
              height: 20,
            ),
            Text(
              'No Completed Orders Yet',
              textAlign: TextAlign.center,
              style: asset.introStyles(22, color: Colors.black54),
            )
          ]),
        ));
  }
}