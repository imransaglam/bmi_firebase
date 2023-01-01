import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../widget/custom_tabBar_widget.dart';
import '../../../controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF9292),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                    bottom: 45,
                    left: 20,
                    child: Text(
                      'Hey!',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFFDCDC)),
                    )),
                Positioned(
                    bottom: 0,
                    left: 20,
                    child: Text(
                      'Welcome Back',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFFDCDC)),
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomTabBarWidget()
          ],
        ),
      ),
    );
  }
}
