import 'package:flutter/material.dart';

import 'item_widget.dart';

// ignore: non_constant_identifier_names
Widget BuildScrolView(BuildContext context) {
    return SizedBox(
          height: 460,
          child: ListView(
            children: [
              Row(
                children: const [
                  ItemWidget(
                      images: "assets/images/image1.png",
                      warna: Color(0xffCAE7BC)),
                  SizedBox(width: 20),
                  ItemWidget(
                      images: "assets/images/image2.png",
                      warna: Color(0xff64A1F4)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  ItemWidget(
                      images: "assets/images/image3.png",
                      warna: Color(0xffCAE7BC)),
                  SizedBox(width: 20),
                  ItemWidget(
                      images: "assets/images/image4.png",
                      warna: Color(0xffCAE7BC)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  ItemWidget(
                      images: "assets/images/image5.png",
                      warna: Color(0xffDFAE1D)),
                  SizedBox(width: 20),
                  ItemWidget(
                      images: "assets/images/image6.png",
                      warna: Color(0xffCAE7BC)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  ItemWidget(
                      images: "assets/images/image7.png",
                      warna: Color(0xffCAE7BC)),
                  SizedBox(width: 20),
                  ItemWidget(
                      images: "assets/images/image8.png",
                      warna: Color(0xffCAE7BC)),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
  }