import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testmasuk/views/register_page.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 18, left: 18, right: 18),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Image.asset("assets/images/login.png"),
                  const Text(
                    "Welcome",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "By signing in you are agreening our",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff6B5E5E),
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Term and privacy policy",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff0386D0),
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFAFA),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xffCCC9C9))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                      ),
                      child: TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          labelText: "Username",
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.email,
                            color: Color(0xffA9A9A9),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFAFA),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xffCCC9C9))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                      ),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "Password",
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.lock,
                            color: Color(0xffA9A9A9),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    login();
                  },
                  child: Container(
                    width: 151,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27),
                        color: const Color(0xff0386D0)),
                    child: const Center(
                        child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const RegisterPage());
                  },
                  child: Container(
                    width: 151,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27),
                        color: Colors.white,
                        border: Border.all(color: const Color(0xff0386D0))),
                    child: const Center(
                        child: Text(
                      "Register",
                      style: TextStyle(color: Color(0xff036BB9)),
                    )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> login() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    if (_passwordController.text.isNotEmpty &&
        _usernameController.text.isNotEmpty) {
      if (_usernameController.text == pref.getString('username') &&
          _passwordController.text == pref.getString('password')) {
        showDialog(
          context: context,
          builder: (BuildContext context) =>
              _buildPopupDialog(context, _usernameController.text),
        );
        Get.to(const HomePage());
      } else {
        if (_passwordController.text != pref.getString('password')) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Wrong username or password")));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("your account is not registered yet")));
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("please fill in the blank")));
    }
  }
}

Widget _buildPopupDialog(BuildContext context, String username) {
  return AlertDialog(
    title: const Text('Popup example'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hello" + username),
      ],
    ),
  );
}
