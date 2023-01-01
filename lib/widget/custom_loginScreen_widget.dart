import 'package:bmifirebase/const/const_data.dart';
import 'package:bmifirebase/widget/custtom_textButton_widget.dart';
import 'package:flutter/material.dart';

import 'custom_elevatedButton_widget.dart';

class CustomLoginScreenWidget extends StatelessWidget {
  CustomLoginScreenWidget({
    Key? key,
    required this.Email,
    required this.Password,
    required this.Login,
    required this.SignUp,
    required this.Conditions,
  }) : super(key: key);
  final String Email;
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
            child: TextField(decoration: InputDecorationContent().inputs),
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
            child: TextField(decoration: InputDecorationContent().inputs),
          ),
          Center(
              child: Padding(
            padding: AppPadding.elevatedButtonPadding,
            child: SizedBox(
              width: sizes.elevatedButtonWidth,
              height: sizes.elevatedButtonHeight,
              child: CustomElevatedButtonWidget(Login: Login, texts: texts),
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
