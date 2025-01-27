import 'package:flutter/material.dart';
import '../../../../core/asset_constants.dart' as asset;

PreferredSize MyAppBar(String title) {
  return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          child: AppBar(
            elevation: 0,
            primary: false,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            title: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2021/04/25/14/30/man-6206540_1280.jpg"),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning',
                      style: asset.introStyles(20, color: Colors.black54),
                    ),
                    Text(
                      'Andrew Ainsley',
                      style: asset.introStyles(20),
                    ),
                  ],
                )
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  asset.notification_bell,
                  width: 25,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  asset.heart,
                  width: 25,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ));
}