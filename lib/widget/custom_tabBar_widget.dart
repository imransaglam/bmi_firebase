import 'package:bmifirebase/const/const_data.dart';
import 'package:bmifirebase/widget/custom_tab_widget.dart';
import 'package:flutter/material.dart';
import 'custom_loginScreen_widget.dart';

class CustomTabBarWidget extends StatefulWidget {
  const CustomTabBarWidget({super.key});

  @override
  State<CustomTabBarWidget> createState() => _CustomTabBarWidgetState();
}

class _CustomTabBarWidgetState extends State<CustomTabBarWidget>
    with TickerProviderStateMixin {
  final Apptexts texts = Apptexts();
  final BoxRadius bRadius = BoxRadius();
  final AppSize sizes = AppSize();
  @override
  Widget build(BuildContext context) {
    TabController tabController =
        TabController(length: sizes.tabBarControllerSize, vsync: this);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(bRadius.boxRadius),
              topRight: Radius.circular(bRadius.boxRadius)),
          color: AppColor.appColorLight),
      child: Column(
        children: [
          Padding(
            padding: AppPadding.containerPadding,
            child: Align(
              alignment: Alignment.center,
              child: TabBar(
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                          width: sizes.borderSize,
                          color: AppColor.appColorDark),
                      insets: AppPadding.lineInsets),
                  labelColor: AppColor.appColorDark,
                  unselectedLabelColor: AppColor.appColorDark,
                  controller: tabController,
                  tabs: [
                    CustomTabWidget(
                      texts: texts,
                      labels: texts.loginScreenLabelLogin,
                    ),
                    CustomTabWidget(
                      texts: texts,
                      labels: texts.loginScreenLabelSignUp,
                    ),
                  ]),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: sizes.tabBarViewHeight,
            child: TabBarView(controller: tabController, children: [
              CustomLoginScreenWidget(
                  Email: texts.loginScreenLabelMail,
                  Password: texts.loginScreenLabelPassword,
                  Login: texts.loginScreenLabelLogin,
                  SignUp: texts.loginScreenLabelTextButton,
                  Conditions: texts.loginScreenLabelConditions),
              CustomLoginScreenWidget(
                  Email: texts.SignUpScreenLabelMail,
                  Password: texts.SignUpScreenLabelPassword,
                  Login: texts.loginScreenLabelSignUp,
                  SignUp: texts.SignUpScreenLabelTextButton,
                  Conditions: texts.SignUpScreenLabelConditions),
            ]),
          )
        ],
      ),
    );
  }
}
