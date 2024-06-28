import 'package:demo_api/SelectTeam_Screen/selectteam_controller.dart';
import 'package:get/get.dart';

class SelectTeamBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() =>  SelectTeamController());
  }

}