import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:briend_mobile_android/routes/routes.dart';
import 'package:briend_mobile_android/shared/constants/constants.dart';
import 'package:briend_mobile_android/shared/utils/utils.dart';

import '../../../../shared/widgets/widgets.dart';
import 'category_widget.dart';

class MenuTab extends StatelessWidget {
  const MenuTab({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UJGText(text: 'Menu Tab', fontSize: CommonConstants.topicText),
            CommonWidget.rowHeight(height: 30.0),
            UJGTextLink(
              text: "Order",
              onPressed: () {
                Get.toNamed(Routes.ORDER);
              },
            ),
            SPProductCategoryWidget(category: "Breads"),
            CommonWidget.rowHeight(height: 30.0),
            SPProductCategoryWidget(category: "Cakes"),
            CommonWidget.rowHeight(height: 30.0),
            SPProductCategoryWidget(category: "Cookies"),
            CommonWidget.rowHeight(height: 30.0),
            SPProductCategoryWidget(category: "Healthy"),
            CommonWidget.rowHeight(height: 30.0),
            SPProductCategoryWidget(category: "Drinking"),
            CommonWidget.rowHeight(height: 30.0),
          ],
        ),
      ),
    );
  }
}