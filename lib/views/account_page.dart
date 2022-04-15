import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testmasuk/views/login_page.dart';

import '../controllers/main_controller.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        BuildItemDescription(context),
        BuildTopBar(context),
      ]),
    ));
  }

  // ignore: non_constant_identifier_names
  Widget BuildItemDescription(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 66,
      child: Column(
        children: [
          _buildButton(size, "LOGOUT", () {
            Get.to(const LoginPage());
          }),
          _buildButton(size, "DELETE ACCOUNT", () {
            hapusAccount(context);
          }),
        ],
      ),
    );
  }

  Widget _buildButton(Size size, String button, Function() onPressed) {
    return Column(
      children: [
        Container(
          width: size.width,
          height: 1,
          color: Colors.grey[350],
        ),
        const SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.only(left: 25),
            width: size.width,
            child: Text(
              button,
              style: const TextStyle(fontSize: 15, color: Colors.black87),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: size.width,
          height: 1,
          color: Colors.grey[350],
        ),
      ],
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
                      controller.isHomePage.value = true;
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
                    "PRODUK DETAIL",
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

Future<void> hapusAccount(BuildContext context) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  if (pref.getString('username') != "" && pref.getString('password') != "") {
    pref.setString('username', "");
    pref.setString('password', "");
    ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Account Deleted")));
    Get.to(const LoginPage());
  }
}
