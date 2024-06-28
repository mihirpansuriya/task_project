import 'package:demo_api/Contests_Screen/contests_controller.dart';
import 'package:get/get.dart';

class ContestsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ContestsController());
  }

}