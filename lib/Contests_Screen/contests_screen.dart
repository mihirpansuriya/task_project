import 'package:demo_api/Contests_Screen/contests_controller.dart';
import 'package:demo_api/route_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ContestsScreen extends GetWidget<ContestsController> {
  const ContestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          size: 30,
                          Icons.keyboard_backspace,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "IND v/s SA",
                            style: TextStyle(
                                fontFamily: "FontMain",
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "4h 5m left",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "FontMain",
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const Spacer(),
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
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.white,
                child: ListView.builder(
                  itemCount: controller.tabText.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Obx(() =>
                        GestureDetector(
                          onTap: () {
                            controller.selectedIndex.value = index;
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  controller.tabText[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "FontMain",
                                    fontWeight: controller.selectedIndex.value ==
                                        index ? FontWeight.bold:FontWeight.w400,
                                    color:
                                    controller.selectedIndex.value == index
                                        ? const Color(0xff140B40)
                                        : Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              if (controller.selectedIndex.value == index)
                                Container(
                                  width: 60,
                                  height: 2,
                                  color: const Color(0xff140B40),
                                ),
                            ],
                          ),
                        ));
                  },
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 275,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.cyan.withOpacity(0.1), // Start color
                              Colors.orange.shade200,
                              Colors.orange.shade100,
                              Colors.orange.shade100,
                              Colors.grey.shade200,
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.centerLeft,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Mega Contests",
                                style: TextStyle(
                                    fontFamily: "FontMain",
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.white)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 15),
                                  child: Column(
                                    children: [
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Prize pool",
                                                  style: TextStyle(
                                                      fontFamily: "FontMain",
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              Text("₹58 Crores",
                                                  style: TextStyle(
                                                      fontFamily: "FontMain",
                                                      fontSize: 24,
                                                      color: Color(0xff140B40),
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("#1 - ₹1 Cr",
                                                  style: TextStyle(
                                                      fontFamily: "FontMain",
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text("#2 - ₹1 Cr",
                                                  style: TextStyle(
                                                      fontFamily: "FontMain",
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Container(
                                        height: 3,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 3,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xff140B40),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("13,21,200 spots left",
                                              style: TextStyle(
                                                  fontFamily: "FontMain",
                                                  fontSize: 15,
                                                  color: Color(0xff140B40),
                                                  fontWeight: FontWeight.bold)),
                                          Text("13,21,200 spots",
                                              style: TextStyle(
                                                  fontFamily: "FontMain",
                                                  fontSize: 15,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      InkWell(
                                        onTap: (){
                                          Get.toNamed(AppRoutes.selectTeamScreenRoutes);
                                        },
                                        child: Container(
                                          height: 45,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff140B40),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Center(
                                            child: Text("₹67",
                                                style: TextStyle(
                                                    fontFamily: "FontMain",
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Row(
                          children: [
                            Text(
                              "Specially For you",
                              style: TextStyle(
                                  fontFamily: "FontMain",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Spacer(),
                            Text(
                              "View All",
                              style: TextStyle(
                                  fontFamily: "FontMain",
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 1,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 15),
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Prize pool",
                                                style: TextStyle(
                                                    fontFamily: "FontMain",
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            Text("₹58 Crores",
                                                style: TextStyle(
                                                    fontFamily: "FontMain",
                                                    fontSize: 24,
                                                    color: Color(0xff140B40),
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("#1 - ₹1 Cr",
                                                style: TextStyle(
                                                    fontFamily: "FontMain",
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text("#2 - ₹1 Cr",
                                                style: TextStyle(
                                                    fontFamily: "FontMain",
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      height: 3,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 3,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                color: const Color(0xff140B40),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("13,21,200 spots left",
                                            style: TextStyle(
                                                fontFamily: "FontMain",
                                                fontSize: 15,
                                                color: Color(0xff140B40),
                                                fontWeight: FontWeight.bold)),
                                        Text("13,21,200 spots",
                                            style: TextStyle(
                                                fontFamily: "FontMain",
                                                fontSize: 15,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: (){
                                        Get.toNamed(AppRoutes.selectTeamScreenRoutes);
                                      },
                                      child: Container(
                                        height: 45,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff140B40),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: const Center(
                                          child: Text("₹67",
                                              style: TextStyle(
                                                  fontFamily: "FontMain",
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/trophy.png",
                        width: 30,
                      ),
                      const Text(
                        "CONTESTS",
                        style: TextStyle(
                            fontFamily: "FontMain",
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      const Spacer(),
                      Container(
                        height: 20,
                        width: 1.5,
                        color: Colors.grey,
                      ),
                      const Spacer(),
                      Image.asset(
                        "assets/team.png",
                        width: 30,
                      ),
                      InkWell(
                        onTap: (){
                          Get.toNamed(AppRoutes.selectTeamScreenRoutes);
                        },
                        child: const Text(
                          "CREATE TEAM",
                          style: TextStyle(
                              fontFamily: "FontMain",
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Entry",
                                style: TextStyle(
                                  fontFamily: "FontMain",
                                ),
                              ),
                              Icon(
                                Icons.close,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 60,
                        width: 1.5,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 15,),
                      const Icon(Icons.filter_alt_outlined,size: 40,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
