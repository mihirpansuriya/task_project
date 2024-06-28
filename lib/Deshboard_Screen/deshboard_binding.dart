import 'package:demo_api/Deshboard_Screen/deshboard_controller.dart';
import 'package:get/get.dart';

class DeshBoardBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => DeshBoardController());
  }

}