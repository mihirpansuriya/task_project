import 'package:demo_api/Deshboard_Screen/deshboard_controller.dart';
import 'package:demo_api/Home_Screen/home_screen.dart';
import 'package:demo_api/LogIN_Page/log_in_screen.dart';
import 'package:demo_api/Send_Feedack/send_feedback_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeshBoardScreen extends GetWidget<DeshBoardController> {
  const DeshBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 110,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff140B40), // Start color
                  Color(0xff1D1459), // End color
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white.withOpacity(0.3),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.wallet_rounded,
                          color: Colors.white,
                          size: 25,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "₹220",
                          style: TextStyle(
                            fontFamily: "FontMain",
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: Color(0xff1D1459),
                              size: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white.withOpacity(0.3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/trophy.png",
                          width: 25,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "₹2220",
                          style: TextStyle(
                            fontFamily: "FontMain",
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Wrapping PageView with Expanded
          Expanded(
            child: PageView(
              controller: controller.pageController,
              onPageChanged: controller.onPageChanged,
              children: const <Widget>[
                HomeScreen(),
                LogInScreen(),
                SendFeedBackScreen(),
                LogInScreen(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(() {
        return Theme(
          data: ThemeData(
            navigationBarTheme: NavigationBarThemeData(
              backgroundColor: Colors.white,
              labelTextStyle: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.selected)) {
                  return const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1D1459),
                  );
                }
                return const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                );
              }),
              iconTheme: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.selected)) {
                  return const IconThemeData(
                    color: Color(0xff1D1459),
                    //backgroundColor: Colors.grey[300], // Set a grey background for the selected icon
                  );
                }
                return const IconThemeData(
                  color: Colors.black,
                );
              }),
            ),
          ),
          child: NavigationBar(
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: controller.onItemTapped,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              NavigationDestination(
                icon: Icon(Icons.store),
                label: "Store",
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
              NavigationDestination(
                icon: Icon(Icons.search),
                label: "Search",
              ),
            ],
          ),
        );
      }),

    );
  }
}
