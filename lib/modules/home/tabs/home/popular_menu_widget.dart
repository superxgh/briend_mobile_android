import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:briend_mobile_android/shared/constants/constants.dart';
import 'package:briend_mobile_android/shared/utils/utils.dart';
import 'package:briend_mobile_android/shared/widgets/widgets.dart';

class SPPopularMenuWidget extends StatelessWidget {
  const SPPopularMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          UJGText(
            text: "Popular Menu",
            fontSize: CommonConstants.labelText,
          ),
          CommonWidget.rowHeight(height: 10.0),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                width: Get.width / 3.2,
                height: 100.0,
                color: Colors.white,
                child: Center(
                  child: Text(
                    "R1",
                    textAlign: TextAlign.center,
                  ),
                )),
            Container(
                width: Get.width / 3.2,
                height: 100.0,
                color: Colors.white,
                child: Center(child: Text("R2", textAlign: TextAlign.center))),
            Container(
                width: Get.width / 3.2,
                height: 100.0,
                color: Colors.white,
                child: Center(child: Text("R3", textAlign: TextAlign.center)))
          ]),
        ],
      ),
    );
  }
}