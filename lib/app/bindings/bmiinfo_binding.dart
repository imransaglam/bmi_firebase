import 'package:get/get.dart';
import '../controllers/bmiinfo_controller.dart';

class BmiinfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BmiinfoController>(() => BmiinfoController());
  }
}