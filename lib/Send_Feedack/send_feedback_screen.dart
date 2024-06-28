import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/send_feedback_controller.dart';

class SendFeedBackScreen extends GetWidget<SendFeedBackController> {
  const SendFeedBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "No Data Found",
          style: TextStyle(
              fontFamily: "FontMain", fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
