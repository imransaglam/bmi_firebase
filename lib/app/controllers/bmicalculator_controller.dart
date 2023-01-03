
import 'package:bmifirebase/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiCalculatorPageController extends GetxController {

double result=0;
 String note = " ";
  List<String> photo = [
    'assets/underweighted.png',
    'assets/fit.png',
    'assets/overweighted.png',
    'assets/obesity.png',
    'assets/extremlyobesed.png'
  ];
   final formGlobalKey = GlobalKey<FormState>();
   TextEditingController weight = TextEditingController();
  TextEditingController height = TextEditingController();

  void assestment() {
  if (formGlobalKey.currentState!.validate()) {
                    print("height değeri: " + height.text);
                    print("weight değeri: " + weight.text);

                    result = double.parse(weight.text) /
                        ((double.parse(height.text) *
                            double.parse(height.text))) *
                        10000;

                    print(" result değeri: " + result.toString());
                    if (result <= 18.5) {
                       Get.toNamed(Routes.INFO,parameters: {'note':'You are underweighted','result':'${result.toString()},','photo':photo[0]});
                   
                    } else if (result > 18.6 && result <= 24.9) {
                      Get.toNamed(Routes.INFO,parameters: {'note':'You are totaly fit','result':'${result.toString()}','photo':photo[1]});
                 
                    } else if (result >= 25 && result <= 29.9) {
                       Get.toNamed(Routes.INFO,parameters: {'note':'You are overweighted','result':'${result.toString()}','photo':photo[2]});
                    
                    } else if (result >= 30 && result <= 34.9) {
                      Get.toNamed(Routes.INFO,parameters: {'note':'You are obesed','result':'${result.toString()}','photo':photo[3]});
                
                    } else if (result >= 35) {
                       Get.toNamed(Routes.INFO,parameters: {'note':'You are extremely obesed','result':'${result.toString()}','photo':photo[4]});
                    
                    }
  }
}
}
  