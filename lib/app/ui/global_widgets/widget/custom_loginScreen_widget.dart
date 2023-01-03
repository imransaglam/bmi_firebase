import 'package:bmifirebase/app/controllers/login_controller.dart';
import 'package:bmifirebase/app/routes/app_pages.dart';
import 'package:bmifirebase/app/ui/utils/const/const_data.dart';
import 'package:bmifirebase/app/ui/global_widgets/widget/custtom_textButton_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom_elevatedButton_widget.dart';

class CustomLoginScreenWidget extends GetView<LoginController> {
  CustomLoginScreenWidget({
    
    Key? key,
    required this.Email,
    required this.Password,
    required this.Login,
    required this.SignUp,
    required this.Conditions,
    required this.control,
    required this.control1,
   
  }) : super(key: key);
  final String Email;
  
  final TextEditingController control;
  final TextEditingController control1;

  final String Password;
  final String Login;
  final String SignUp;
  final String Conditions;
  final Apptexts texts = Apptexts();
  final AppSize sizes = AppSize();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.columnPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Email,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColor.appColorDark,
                fontFamily: texts.appFontFamily,
                fontSize: sizes.fontSize,
                fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: AppPadding.texFieldPadding,
            child: TextField(
              controller: control,
              decoration: InputDecorationContent().inputs),
          ),
          Text(
            Password,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColor.appColorDark,
                fontFamily: texts.appFontFamily,
                fontSize: sizes.fontSize,
                fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: AppPadding.texFieldPadding,
            child: TextField(
              obscureText: true,
              controller: control1,
              decoration: InputDecorationContent().inputs),
          ),
          Center(
              child: Padding(
            padding: AppPadding.elevatedButtonPadding,
            child: SizedBox(
              width: sizes.elevatedButtonWidth,
              height: sizes.elevatedButtonHeight,
              child: CustomElevatedButtonWidget(Login: Login, texts: texts, pressedx: ()  async{
             
                   await controller.auth.signUpAccount(control.text,control1.text);
                   },),
            ),
          )),
          Center(
              child: CustomTextButtonWidget(
            titles: SignUp,
            texts: texts,
            fontSizes: sizes.fontSizeSignLogin,
          )),
          Center(
              child: CustomTextButtonWidget(
            titles: Conditions,
            texts: texts,
            fontSizes: sizes.fontSizeConditions,
          )),
        ],
      ),
    );
  }
}
