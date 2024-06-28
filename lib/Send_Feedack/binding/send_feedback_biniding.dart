import 'package:get/get.dart';

import '../controller/send_feedback_controller.dart';

class SendFeedBackBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SendFeedBackController());
  }

}