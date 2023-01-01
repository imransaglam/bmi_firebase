import 'package:flutter/material.dart';

import '../const/const_data.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget({
    Key? key,
    required this.titles,
    required this.texts, required this.fontSizes,
  }) : super(key: key);

  final String titles;
  final Apptexts texts;
  final double fontSizes;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          titles,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(
                  color: AppColor.appColorDark,
                  fontFamily: texts.appFontFamily,
                  fontSize: fontSizes,
                  fontWeight: FontWeight.w600),
        ));
  }
}