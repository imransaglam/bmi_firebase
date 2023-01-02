
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'app/routes/app_pages.dart';
import 'app/ui/pages/bmicalculator_page/bmicalculator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.LOGIN,
      enableLog: true,  
      getPages: AppPages.routes, 
      debugShowCheckedModeBanner: false,
     home:  BmiCalculatorPage(),
    );
  }
}


  
 
