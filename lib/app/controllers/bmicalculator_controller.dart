
import 'package:bmifirebase/app/routes/app_pages.dart';
import 'package:bmifirebase/app/shared/service/auth_service.dart';
import 'package:bmifirebase/app/shared/service/firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiCalculatorPageController extends GetxController {
AuthService authSrvice=AuthService();
FirebaseFirestore firebaseFirestore=FirebaseFirestore.instance;
FirestoreService db=FirestoreService();

TextEditingController weight = TextEditingController();
TextEditingController height = TextEditingController();

double result=0;
var note = " ";

  List photo = [
    'assets/underweighted.png',
    'assets/fit.png',
    'assets/overweighted.png',
    'assets/obesity.png',
    'assets/extremlyobesed.png'
  ];


  void calculate(String heightt,String weightt) async{
  var values=(int.parse(heightt)/100)*(int.parse(heightt)/100);
   result=double.parse(weightt)/double.parse(values.toString());

                    db.addUserInfo(weight.text,height.text,result.toStringAsFixed(2));
                    if (result <= 18.5) {
                      note='You are underweighted';
                      photo=photo[0];
                       Get.toNamed(Routes.INFO);
                    } else if (result > 18.6 && result <= 24.9) {
                       note='You are totaly fit';
                      photo=photo[1];
                       Get.toNamed(Routes.INFO);
                    } else if (result >= 25 && result <= 29.9) {
                      note='You are overweighted';
                      photo=photo[2];
                       Get.toNamed(Routes.INFO);
                    } else if (result >= 30 && result <= 34.9) {
                      note='You are obesed';
                      photo=photo[3];
                       Get.toNamed(Routes.INFO);
                    } else if (result >= 35) {
                      note='You are extremely obesed';
                      photo=photo[4];
                       Get.toNamed(Routes.INFO);
                    }

                   
                }

                 isBMIControl() {
    if (weight.text == '' || height.text == '') {
      Get.dialog(
        AlertDialog(
          title: const Text('Alert',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          content: const Text(
            'Cannot be blank',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('Cancel',
                  style: TextStyle(
                      color: Color(0xff468FF8),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('OK',
                  style: TextStyle(
                      color: Color(0xff468FF8),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );
    } 
    else 
    if (int.parse(height.text) < 50 || int.parse(height.text) > 250) {
      Get.dialog(
        AlertDialog(
          title: const Text('Alert',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          content: const Text(
            'The height value should be in the range of 50 - 250 cm!',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('Cancel',
                  style: TextStyle(
                      color: Color(0xff468FF8),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (int.parse(weight.text) < 10 || int.parse(weight.text)> 300) {
      Get.dialog(
        AlertDialog(
          title: const Text('Alert',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          content: const Text(
            'The weight value should be in the range of 10 - 300 kg!',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('Cancel',
                  style: TextStyle(
                      color: Color(0xff468FF8),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('OK',
                  style: TextStyle(
                      color: Color(0xff468FF8),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );
    }
    else {
      print(weight.text);
      calculate(weight.text,height.text);
     
    }
  }

}