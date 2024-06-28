import 'package:demo_api/LogIN_Page/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInScreen extends GetWidget<LogInController> {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LogInController controller = Get.put(LogInController());

    return const Scaffold(
      body: Center(
        child: Text(
          "Add Money",
          style: TextStyle(
              fontFamily: "FontMain",
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
