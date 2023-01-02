import 'package:bmifirebase/app/ui/utils/const/const_data.dart';
import 'package:flutter/material.dart';

class CustomTabWidget extends StatelessWidget {
  CustomTabWidget({
    Key? key,
    required this.texts, required this.labels,
  }) : super(key: key);

  final Apptexts texts;
  final String labels;
  final AppSize sizes=AppSize();
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        labels,
        style: TextStyle(
            fontFamily: texts.appFontFamily,
            fontSize: sizes.fontSize,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}