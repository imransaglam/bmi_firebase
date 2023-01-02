import 'package:bmifirebase/app/ui/utils/const/const_data.dart';
import 'package:flutter/material.dart';

class CustomTextMesageWidget extends StatelessWidget {
  const CustomTextMesageWidget({
    Key? key,
    required this.texts, required this.title,
  }) : super(key: key);

  final Apptexts texts;
  final String  title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineMedium
          ?.copyWith(
              fontFamily: texts.appFontFamily,
              fontWeight: FontWeight.w600,
              color: AppColor.appColorLight),
    );
  }
}