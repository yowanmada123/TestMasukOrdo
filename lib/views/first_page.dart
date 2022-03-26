import 'package:flutter/material.dart';

import '../widget/big_banner.dart';
import '../widget/build_bottom_bar.dart';
import '../widget/line.dart';
import '../widget/scrool_view.dart';
import '../widget/top_button.dart';

// ignore: non_constant_identifier_names
Widget FirstPage(BuildContext context) {
  return SafeArea(
    child: Stack(children: [
      ListView(
        padding: const EdgeInsets.only(right: 21, left: 21, top: 10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 33,
                width: 230,
                decoration: BoxDecoration(
                  color: const Color(0xffF0F0F0),
                  borderRadius: BorderRadius.circular(35.09),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Image.asset(
                        'assets/images/Shape.png',
                        height: 15,
                        width: 15,
                      ),
                    ),
                    const SizedBox(width: 9),
                    const Text(
                      "Cari dengan mengetik barang",
                      style: TextStyle(fontSize: 9, color: Color(0xffB9B5B5)),
                    )
                  ],
                ),
              ),
              BuildTopButton(context, const Color(0xff64A1F4),
                  "assets/images/options.png"),
              BuildTopButton(context, const Color(0xffDFAE1D),
                  "assets/images/Vector_bag.png"),
              BuildTopButton(context, const Color(0xffFF485A),
                  "assets/images/Vector_bell.png"),
            ],
          ),
          const SizedBox(height: 20),
          BuildBigBanner(context),
          const SizedBox(height: 9),
          BuildLine(context),
          const SizedBox(height: 31),
          BuildScrolView(context)
        ],
      ),
      BuildBottomBar(context),
    ]),
  );
}
