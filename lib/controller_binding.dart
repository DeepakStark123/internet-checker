import 'package:get/get.dart';
import 'package:my_flutter_app/connection_manager_controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConnectionManagerController>(
        () => ConnectionManagerController());
  }
}
