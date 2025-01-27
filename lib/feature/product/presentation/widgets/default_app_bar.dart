import 'package:flutter/material.dart';
import '../../../../../../core/asset_constants.dart' as asset;

PreferredSize DefaultAppBar(
    String title,
    ) {
  return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: SafeArea(
        child: AppBar(
          elevation: 0,
          primary: false,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          titleSpacing: 10,
          title: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(asset.logo1),
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black, fontFamily: 'Ubuntu', fontSize: 23),
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black54,
                  size: 30,
                ))
          ],
        ),
      ));
}