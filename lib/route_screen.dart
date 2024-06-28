import 'package:demo_api/Contests_Screen/contests_binding.dart';
import 'package:demo_api/Contests_Screen/contests_screen.dart';
import 'package:demo_api/Deshboard_Screen/deshBoard_screen.dart';
import 'package:demo_api/Deshboard_Screen/deshboard_binding.dart';
import 'package:demo_api/Home_Screen/home_binding.dart';
import 'package:demo_api/Home_Screen/home_screen.dart';
import 'package:demo_api/LogIN_Page/log_in_binding.dart';
import 'package:demo_api/LogIN_Page/log_in_screen.dart';
import 'package:demo_api/SelectTeam_Screen/selectteam_binding.dart';
import 'package:demo_api/SelectTeam_Screen/selectteam_screen.dart';
import 'package:demo_api/Send_Feedack/binding/send_feedback_biniding.dart';
import 'package:demo_api/Send_Feedack/send_feedback_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String logInScreenRoutes = "/logInScreenRoutes";
  static const String registerScreenRoutes = "/registerScreenRoutes";
  static const String homeScreenRoutes = "/homeScreenRoutes";
  static const String deshScreenRoutes = "/deshScreenRoutes";
  static const String contestScreenRoutes = "/contestScreenRoutes";
  static const String selectTeamScreenRoutes = "/selectTeamScreenRoutes";
  static const String sendFeedBackScreenRoutes = "/sendFeedBackScreenRoutes";
  static List<GetPage> page = [
    GetPage(
        name: logInScreenRoutes,
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 150),
        page: () => const LogInScreen(),
        bindings: [LogInBinsing()]),

    GetPage(
        name: homeScreenRoutes,
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 150),
        page: () => const HomeScreen(),
        bindings: [HomeBinding()]),
    GetPage(
        name: deshScreenRoutes,
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 150),
        page: () => const DeshBoardScreen(),
        bindings: [DeshBoardBinding()]),
    GetPage(
        name: contestScreenRoutes,
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 150),
        page: () => const ContestsScreen(),
        bindings: [ContestsBinding()]),
    GetPage(
        name: selectTeamScreenRoutes,
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 150),
        page: () => const SelectTeamScreen(),
        bindings: [SelectTeamBinding()]),
    GetPage(
        name: sendFeedBackScreenRoutes,
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 150),
        page: () => const SendFeedBackScreen(),
        bindings: [SendFeedBackBinding()]),
  ];
}
