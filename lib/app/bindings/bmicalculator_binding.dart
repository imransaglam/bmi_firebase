
import 'package:get/get.dart';
import '../controllers/bmicalculator_controller.dart';


class BmiCalculatorPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BmiCalculatorPageController>(() => BmiCalculatorPageController());
  }
}