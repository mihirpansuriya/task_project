import 'package:demo_api/SelectTeam_Screen/selectteam_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SelectTeamScreen extends GetWidget<SelectTeamController> {
  const SelectTeamScreen({super.key});

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
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                color: Colors.black,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(
                              Icons.keyboard_backspace,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          const SizedBox(width: 15),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Create Team 1",
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
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                shape: BoxShape.circle),
                            child: const Center(
                                child: Text(
                              "P",
                              style: TextStyle(color: Colors.white),
                            )),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Maximum 10 players from one team",
                        style: TextStyle(
                            fontFamily: "FontMain", color: Colors.white),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Image.asset("assets/fram.png"),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Credits Left",
                                style: TextStyle(
                                    fontFamily: "FontMain", color: Colors.grey),
                              ),
                              Text(
                                "100",
                                style: TextStyle(
                                    fontFamily: "FontMain",
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Container(
                            height: 45,
                            width: 1.5,
                            color: Colors.grey,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/india.png",
                                    width: 25,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "IND  -  0",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "FontMain",
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/south.png",
                                    width: 25,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "SA     -  0",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "FontMain",
                                        color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: 45,
                            width: 1.5,
                            color: Colors.grey,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Players",
                                style: TextStyle(
                                    fontFamily: "FontMain", color: Colors.grey),
                              ),
                              Text(
                                "0/11",
                                style: TextStyle(
                                    fontFamily: "FontMain",
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      )
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
                    return Obx(() => GestureDetector(
                          onTap: () {
                            controller.selectedIndex.value = index;
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 22),
                                child: Text(
                                  controller.tabText[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "FontMain",
                                    fontWeight:
                                        controller.selectedIndex.value == index
                                            ? FontWeight.bold
                                            : FontWeight.w400,
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
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 40,
                color: const Color(0xff140B40),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select 1-8 Wicket Keepers",
                      style: TextStyle(
                          fontFamily: "FontMain",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/rohit.png",
                                width: 50,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rohit Sharma",
                                    style: TextStyle(
                                        fontFamily: "FontMain",
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Sel by 73.34%",
                                    style: TextStyle(
                                        fontFamily: "FontMain",
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "• Played last match (sub)",
                                    style: TextStyle(
                                        fontFamily: "FontMain",
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              const Text(
                                "53",
                                style: TextStyle(
                                    fontFamily: "FontMain",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "9.0",
                                style: TextStyle(
                                    fontFamily: "FontMain",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade50,
                                  border: Border.all(color: Colors.green),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.green,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          const Divider(),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff140B40)),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          "Preview",
                          style: TextStyle(
                              fontFamily: "FontMain",
                              color: Color(0xff140B40),
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff140B40),
                          border: Border.all(color: const Color(0xff140B40)),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          "Preview",
                          style: TextStyle(
                              fontFamily: "FontMain",
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
