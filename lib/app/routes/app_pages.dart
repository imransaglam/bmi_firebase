import 'package:bmifirebase/app/bindings/bmicalculator_binding.dart';
import 'package:bmifirebase/app/bindings/bmiinfo_binding.dart';
import 'package:bmifirebase/app/bindings/login_binding.dart';
import 'package:bmifirebase/app/ui/pages/bmiinfo_page/bmiinfo_page.dart';
import 'package:bmifirebase/app/ui/pages/login_page/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../ui/pages/bmicalculator_page/bmicalculator_page.dart';


part 'app_routes.dart';
class AppPages{
  static const INITIAL=Routes.LOGIN;
  static final routes = [
    GetPage(
        name: Routes.LOGIN,
        page: () =>  LoginPage(),
        binding: LoginBinding()),

        GetPage(
      name: Routes.BMI, 
      page: ()=>BmiCalculatorPage(),
      binding: BmiCalculatorPageBinding()
      ),
        GetPage(
      name: Routes.INFO, 
      page: ()=>BmiinfoPage(),
      binding: BmiinfoBinding()
      ),
   
      
   
  ];
}