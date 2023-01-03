
import 'package:bmifirebase/app/ui/global_widgets/widget/custom_elevatedButton_widget.dart';
import 'package:bmifirebase/app/ui/utils/const/const_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/bmicalculator_controller.dart';
import '../../../routes/app_pages.dart';


class BmiinfoPage extends GetView<BmiCalculatorPageController> {
  final Apptexts texts=Apptexts();
  final AppSize sizes=AppSize();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.only(left:15,right:15),
        child: Column(
          children: [
            SizedBox(height:100),
            Container(
              width: 500,
              height: 450,
              decoration: BoxDecoration(
                color:Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("Your BMI is",style: TextStyle(color:Color(0xff383838),fontSize:30,fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                     Text("${controller.result.toString().substring(0,2)}",style: TextStyle(color:Color(0xff51C797),fontSize:40,fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                    Text("${controller.note}",style: TextStyle(color:Color(0xff383838),fontSize:20,fontWeight: FontWeight.w600),),
                    SizedBox(height: 40,),
                    Container(width:200,
                    height: 200, 
                    child: Image.asset("${controller.photo}",fit: BoxFit.cover,)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 150),
           Center(child: CustomElevatedButtonWidget(Login:texts.BmiInfo,texts:texts, pressedx: () {Get.toNamed(Routes.BMI);  },)) 
          ],
        )),
      ),
    );
  }
}
  