
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
                height: 250,
                 width: MediaQuery.of(context).size.width,),  
                 Positioned(bottom: 40,left:20,child: Text('Hey!',style:Theme.of(context).textTheme.headlineMedium?.copyWith(fontFamily: 'Poppins',fontWeight: FontWeight.w600,color: Color(0xffFFDCDC)),)),
                 Positioned(bottom:0,left:20,child: Text('Welcome Back',style:Theme.of(context).textTheme.headlineMedium?.copyWith(fontFamily: 'Poppins',fontWeight: FontWeight.w600,color: Color(0xffFFDCDC)),)),
             ],
           ),
      
          //  Padding(
          //    padding: const EdgeInsets.only(top:20),
          //    child: Container(
          //     height:MediaQuery.of(context).size.height,
          //     width: MediaQuery.of(context).size.width,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.horizontal(left:Radius.circular(40),right: Radius.circular(40)),
          //     color: Color(0xffFFB4B4)
          //     ),
          //   child: CustomTabBarWidget(),
          //  ),
          //  ),

           CustomTabBarWidget()
          
          ],
        ),
      ),
    );
  }
}
  