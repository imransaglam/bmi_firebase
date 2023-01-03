import 'package:get/get.dart';
import '../controllers/bmicalculator_controller.dart';

class BmiinfoBinding implements Bindings {
  @override
  void dependencies() {
   Get.put(BmiCalculatorPageController());
  }
}