
import 'package:bmifirebase/app/ui/utils/const/const_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../controllers/bmicalculator_controller.dart';
import '../../../routes/app_pages.dart';
import '../../global_widgets/widget/custom_elevatedButton_widget.dart';
import '../../global_widgets/widget/custtom_textButton_widget.dart';


class BmiCalculatorPage extends GetView<BmiCalculatorPageController> {
  final Apptexts texts=Apptexts();
  final AppSize sizes=AppSize();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appColorLight,
      body:Form(
         key: controller.formGlobalKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const  SizedBox(height: 100,),
                SizedBox(
                  width: 170,
                  height: 80,
                  child: Text("Let's Calculate your current BMI",style: Theme.of(context).textTheme.titleLarge?.copyWith( color: AppColor.appColorDark,
                        fontFamily: texts.appFontFamily,
                        fontWeight: FontWeight.w600),)),
                const SizedBox(height: 5,),        
                    SizedBox(
                  width: 380,
                  height: 80,
                  child: Text("You can find out whether you are overweight,underweight or ideal weight.",style: Theme.of(context).textTheme.titleLarge?.copyWith( color: AppColor.appColorDark,
                        fontSize: sizes.fontSizeSignLogin,
                        fontFamily: texts.appFontFamily,
                        fontWeight: FontWeight.w500),)),
                const SizedBox(height: 35,),



                 TextFormField(
                     inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                     validator: (value) {
                         if (value!.isEmpty) {
                        return "Enter your weight";
                      } else if (double.parse(controller.weight.text) <= 29 ||
                          double.parse(controller.weight.text) >= 251) {
                        return "You should enter your weight between 30 kg and 250 kg  ";
                      } else {
                        return null;
                      }
                     },
                  keyboardType: TextInputType.number,
                  decoration:InputDecoration(
                  labelText: "Weight",
                  suffixText: "kg",
                  enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 3, color: Color(0xffff9292)),
                borderRadius: BorderRadius.all(Radius.circular(60)),
              )
              ),
                ),
                const SizedBox(height: 30,),
                   TextFormField(
             inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                     validator:(value) {
                        if (value!.isEmpty) {
                        return "Enter your height";
                      } else if (double.parse(controller.height.text) <= 101 ||
                          double.parse(controller.height.text) >= 251) {
                        return "You should enter your height between 100 and 250  ";
                      } 
                      else {
                        return null;
                      }
                     }, 
                    controller: controller.height,
                  keyboardType: TextInputType.number,
                  decoration:InputDecoration(
                  labelText: "Height",
                  suffixText: "cm",
                  enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 3, color: Color(0xffff9292)),
                borderRadius: BorderRadius.all(Radius.circular(60)),
              )
              ),
                ),  
                const SizedBox(height: 40,),
                Center(child: CustomElevatedButtonWidget(Login:texts.BmiCalculate,texts:texts, pressedx: () {controller.assestment();  },))         
                
          
          
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
  