import 'package:flutter/material.dart';

class Apptexts{
  final String loginScreenText="Hey!";
  final String loginScreenText2="Welcome Back";
  final String appFontFamily="Poppins";
  final String loginScreenLabelLogin="Login";
  final String loginScreenLabelSignUp="Sign Up";
  final String loginScreenLabelMail="Email";
  final String loginScreenLabelPassword="Password";
  final String loginScreenLabelTextButton="Or sign up here";
  final String loginScreenLabelConditions="Terms & Conditions Apply*";
  final String SignUpScreenLabelMail="Enter email";
  final String SignUpScreenLabelPassword="Create password";
  final String SignUpScreenLabelTextButton="Or login here";
  final String SignUpScreenLabelConditions="Terms & Conditions Apply*";
}
class AppColor{
  static const Color appColorLight=Color(0xffFFDCDC);
  static const Color appColorDark=Color(0xffFF9292);
}
class AppSize{
  final double messageContainerHeight=300;
  final double tabBarViewHeight=550;
  final double borderSize=2;
  final double fontSize=20;
  final double fontSizeSignLogin=15;
  final double fontSizeConditions=12;
  final int tabBarControllerSize=2;
  final double elevatedButtonFontSize=30;
  final double elevatedButtonHeight=60;
  final double elevatedButtonWidth=250;
}
class AppPositionedNumber{
    final double postionedLeft=20;
    final double postionedBottom=45;
    final double postionedBottomZero=0;
}
class SizedBoxSize{
   final double SizedBoxHeight=20;
}
class AppPadding{
  static const containerPadding=EdgeInsets.only(top: 10.0);
  static const lineInsets=EdgeInsets.symmetric(horizontal: 50.0);
  static const columnPadding=EdgeInsets.symmetric(horizontal: 40, vertical: 40);
  static const texFieldPadding=EdgeInsets.only(top: 15, bottom: 15);
  static const elevatedButtonPadding=EdgeInsets.only(top: 40.0);
}
class BoxRadius{
  final double boxRadius=40;
  final double RectangleRadius=20;
}
class InputDecorationContent{
  final inputs=const InputDecoration(
              enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 3, color: Color(0xffff9292)),
            borderRadius: BorderRadius.all(Radius.circular(60)),
          ));
}