import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DeshBoardController extends GetxController {
  // PageController to control the PageView
  final pageController = PageController();

  // Index of the currently selected bottom navigation bar item
  var selectedIndex = 0.obs;

  // Method to change the selected index
  void onItemTapped(int index) {
    selectedIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Method to change the selected index from the PageView
  void onPageChanged(int index) {
    selectedIndex.value = index;
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
