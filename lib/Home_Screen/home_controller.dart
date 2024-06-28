import 'package:get/get.dart';

class HomeController extends GetxController {
  List textRupees = [
    "₹45",
    "₹45",
    "₹45",
  ];
  var results = [
    {"status": "Won", "amount": "₹220"},
    {"status": "Loss", "amount": "₹150"},
  ].obs;
}
