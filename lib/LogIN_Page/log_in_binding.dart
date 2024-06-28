import 'package:demo_api/LogIN_Page/log_in_controller.dart';
import 'package:get/get.dart';

class LogInBinsing extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LogInController());
  }

}