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
                      name: "JBL Base",
                      images: "assets/images/image1.png",
                      warna: Color(0xffCAE7BC),
                      firstprice: "90.000",
                      finalprice: "45.000",),
                  SizedBox(width: 20),
                  ItemWidget(
                    name: "Piramid Base",
                      images: "assets/images/image2.png",
                      warna: Color(0xff64A1F4),
                      firstprice: "350.000",
                      finalprice: "185.800",),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  ItemWidget(
                    name: "Iphone 8",
                      images: "assets/images/image3.png",
                      warna: Color(0xffCAE7BC),
                      firstprice: "8.800.000",
                      finalprice: "8.200.000",),
                  SizedBox(width: 20),
                  ItemWidget(
                    name: "Samsung Edge",
                      images: "assets/images/image4.png",
                      warna: Color(0xffCAE7BC),
                      firstprice: "3.000.000",
                      finalprice: "2.500.000",),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  ItemWidget(
                    name: "Polo Bag",
                      images: "assets/images/image5.png",
                      warna: Color(0xffDFAE1D),
                      firstprice: "8.200.000",
                      finalprice: "4.500.000",),
                  SizedBox(width: 20),
                  ItemWidget(
                    name: "Zara Coke",
                      images: "assets/images/image6.png",
                      warna: Color(0xffCAE7BC),
                      firstprice: "3.200.000",
                      finalprice: "2.000.000",),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  ItemWidget(
                    name: "Cherry Zara",
                      images: "assets/images/image7.png",
                      warna: Color(0xffCAE7BC),
                      firstprice: "9.000.000",
                      finalprice: "4.500.000",),
                  SizedBox(width: 20),
                  ItemWidget(
                    name: "Yellow Punk",
                      images: "assets/images/image8.png",
                      warna: Color(0xffCAE7BC),
                      firstprice: "3.200.000",
                      finalprice: "2.500.000",),
                ],
              ),
              const SizedBox(height: 80),
            ],
          ),
        );
  }