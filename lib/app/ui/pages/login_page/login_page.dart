import 'package:bmifirebase/app/ui/utils/const/const_data.dart';
import 'package:bmifirebase/app/ui/global_widgets/widget/custom_textMessage_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global_widgets/widget/custom_tabBar_widget.dart';
import '../../../controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
final Apptexts texts=Apptexts();
final AppSize sizes=AppSize();
final AppPositionedNumber numbers=AppPositionedNumber();
final SizedBoxSize sizedBoxSize=SizedBoxSize();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appColorDark,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: sizes.messageContainerHeight,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                    bottom: numbers.postionedBottom,
                    left: numbers.postionedLeft,
                    child: CustomTextMesageWidget(texts: texts, title: texts.loginScreenText,)),
                Positioned(
                    bottom: numbers.postionedBottomZero,
                    left: numbers.postionedLeft,
                    child: CustomTextMesageWidget(texts: texts, title: texts.loginScreenText2,)),
              ],
            ),
            sizedbox(),
            CustomTabBarWidget()
          ],
        ),
      ),
    );
  }

  SizedBox sizedbox() {
    return SizedBox(
            height:sizedBoxSize.SizedBoxHeight,
          );
  }
}


