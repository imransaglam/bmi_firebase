import 'package:bmifirebase/app/ui/utils/const/const_data.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
   CustomElevatedButtonWidget({
    Key? key,
    required this.Login,
    required this.texts, required this.pressedx
  }) : super(key: key);

  final String Login;
  final Apptexts texts;
  final BoxRadius bRadiues=BoxRadius();
  final AppSize sizes=AppSize();
  final void Function() pressedx;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: pressedx,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.appColorDark,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(bRadiues.RectangleRadius))),
        child: Text(
          Login,
          style: Theme.of(context)
              .textTheme
              .labelLarge
              ?.copyWith(
                  color: AppColor.appColorLight,
                  fontFamily: texts.appFontFamily,
                  fontSize: sizes.elevatedButtonFontSize,
                  fontWeight: FontWeight.w600),
        ));
  }
}