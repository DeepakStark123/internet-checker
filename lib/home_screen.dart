import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/connection_manager_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ConnectionManagerController controller =
        Get.find<ConnectionManagerController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Internet Connection Check Using Getx'),
      ),
      body: Center(
        child: Obx(() => Text(
              controller.connectionType.value == 1
                  ? "Wifi Connected"
                  : controller.connectionType.value == 2
                      ? 'Mobile Data Connected'
                      : 'No Internet',
              style: const TextStyle(fontSize: 20),
            )),
      ),
    );
  }
}
