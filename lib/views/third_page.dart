import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../controllers/main_controller.dart';
import '../widget/build_bottom_bar.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        BuildBody(context),
        BuildTopBar(context),
        BuildBottomBar(context),
      ]),
    ));
  }

  Widget BuildBody(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          const SizedBox(
            height: 80,
          ),
          const BuildSlidableWidget(
            images: "assets/images/image8.png",
            name: "Tas Gucci",
            stock: "2",
            note: "Ketik disini....",
          ),
          const SizedBox(height: 8.67),
          const BuildSlidableWidget(
            images: "assets/images/image6.png",
            name: "Tas Eiger",
            stock: "1",
            note:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
          ),
          BuildKolomCatatanItem(context),
          const SizedBox(height: 20),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 25.15, right: 25.15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Detail Pembayaran",
                    style: TextStyle(
                        fontSize: 11.27,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000)),
                  ),
                  const SizedBox(height: 8.67),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Tas Gucci",
                            style: TextStyle(
                                fontSize: 11.27,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff000000)),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "Qty. 1",
                            style: TextStyle(
                                fontSize: 11.27,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000)),
                          ),
                        ],
                      ),
                      const Text(
                        "Rp. 75.000",
                        style: TextStyle(
                            fontSize: 11.27,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      )
                    ],
                  ),
                  const SizedBox(height: 8.67),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Tas Eiger",
                            style: TextStyle(
                                fontSize: 11.27,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff000000)),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "Qty. 1",
                            style: TextStyle(
                                fontSize: 11.27,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000)),
                          ),
                        ],
                      ),
                      const Text(
                        "Rp. 75.000",
                        style: TextStyle(
                            fontSize: 11.27,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      )
                    ],
                  ),
                  const SizedBox(height: 8.67),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Ongkos Kirim",
                        style: TextStyle(
                            fontSize: 11.27,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                      Text(
                        "Rp. 10.000",
                        style: TextStyle(
                            fontSize: 11.27,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.14),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Color(0xffEFEFEF)),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Sub Total",
                        style: TextStyle(
                            fontSize: 11.27,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000000)),
                      ),
                      Text(
                        "Rp. 450.000",
                        style: TextStyle(
                            fontSize: 11.27,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000000)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  BuildLongRoundedButton(context, "Waktu Pengantaran"),
                  const SizedBox(height: 20),
                  BuildLongRoundedButton(context, "Alamat Pengiriman"),
                  const SizedBox(height: 20),
                  Container(
                    height: 74.57,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11.27),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                    child: const Text(
                      "Tolong pastikan semua pesanan anda sudah benar dan tidak kurang.",
                      style: TextStyle(
                          fontSize: 12.14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff47623F)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 31),
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(55.5),
                      color: const Color(0xff3C7DD9),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                    child: const Text(
                      "Bayar Sekarang",
                      style: TextStyle(
                          fontSize: 16.48,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF)),
                      textAlign: TextAlign.center,
                    ),
                  ),const SizedBox(height: 100),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container BuildLongRoundedButton(BuildContext context, String name) {
    return Container(
      height: 32.08,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.94),
        color: Color(0xff3C7DD9),
      ),
      padding: EdgeInsets.symmetric(horizontal: 13.87, vertical: 7.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
                fontSize: 11.27,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
          Image.asset("assets/images/next.png")
        ],
      ),
    );
  }

  Padding BuildKolomCatatanItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.15, right: 25.15, top: 20),
      child: Container(
        height: 115,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 10.41, right: 20, top: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17.34),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 0.1), //(x,y)
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Catatan Item",
              style: TextStyle(
                  fontSize: 10.41,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000)),
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 71.97,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.94),
                    color: Colors.white,
                    border: Border.all(color: Color(0xffCDCDCD), width: 0.87)),
                child: const Padding(
                    padding: EdgeInsets.only(left: 6.94, top: 8.67),
                    child: Text(
                      "Ketik disini...",
                      style:
                          TextStyle(fontSize: 10.41, color: Color(0xffCDCDCD)),
                    )))
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget BuildTopBar(BuildContext context) {
    var controller = Get.put(MainController());
    return Positioned(
      top: 0,
      child: Container(
        height: 66,
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 25.15, vertical: 20.81),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                      controller.isHomePage.value = false;
                    },
                    child: Container(
                      height: 19.08,
                      width: 19.08,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff64A1F4)),
                      child: const FittedBox(
                          fit: BoxFit.cover,
                          child: Icon(
                            Icons.arrow_back,
                            size: 2,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  const Text(
                    "Checkout",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff64A1F4)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildSlidableWidget extends StatelessWidget {
  const BuildSlidableWidget({
    Key? key,
    required this.images,
    required this.name,
    required this.stock,
    required this.note,
  }) : super(key: key);

  final String images;
  final String name;
  final String stock;
  final String note;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      endActionPane: const ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            flex: 1,
            onPressed: doNothing,
            foregroundColor: Colors.blue,
            icon: Icons.delete,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 116,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.15,
                    right: 25.15,
                  ),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.34),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.1), //(x,y)
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.41, right: 20, top: 16),
                      child: Column(
                        children: [
                          Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(images),
                                      backgroundColor: Colors.white,
                                      radius: 34,
                                    ),
                                    const SizedBox(
                                      width: 11.1,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          name,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xff000000)),
                                        ),
                                        const SizedBox(
                                          height: 11.1,
                                        ),
                                        const Text(
                                          "Rp. 75.000",
                                          style: TextStyle(
                                              fontSize: 11.27,
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xff64A1F4)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 17.34,
                                      width: 45.09,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(26.01),
                                        color: Color(0xff3C7DD9),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(0.0, 0.1), //(x,y)
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(
                                              onTap: () {},
                                              child: const Text(
                                                "-",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.white),
                                              )),
                                          GestureDetector(
                                              onTap: () {},
                                              child: Text(
                                                stock,
                                                style: const TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.white),
                                              )),
                                          GestureDetector(
                                              onTap: () {},
                                              child: const Text(
                                                "+",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.white),
                                              )),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 11.1,
                                    ),
                                    Container(
                                      height: 19.94,
                                      width: 76.31,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(26.01),
                                        color: Color(0xff3C7DD9),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(0.0, 0.1), //(x,y)
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(
                                              onTap: () {},
                                              child: Image.asset(
                                                "assets/images/create.png",
                                                width: 11.27,
                                                height: 11.27,
                                              )),
                                          GestureDetector(
                                              onTap: () {},
                                              child: const Text(
                                                "Catatan",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.white),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ]))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.15),
            child: Container(
              height: 92,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 10.41, right: 20, top: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.34),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 0.1), //(x,y)
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Catatan Item",
                    style: TextStyle(
                        fontSize: 10.41,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000)),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 47.69,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.94),
                          color: Colors.white,
                          border: Border.all(
                              color: Color(0xffCDCDCD), width: 0.87)),
                      child: Padding(
                          padding: EdgeInsets.only(left: 6.94, top: 8.67),
                          child: Text(
                            note,
                            style: TextStyle(
                                fontSize: 10.41, color: Color(0xffCDCDCD)),
                          )))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void doNothing(BuildContext context) {}
