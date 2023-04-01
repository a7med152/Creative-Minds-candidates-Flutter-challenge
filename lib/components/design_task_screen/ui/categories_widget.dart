import 'package:creative_minds_flutter_challenge/components/design_task_screen/model/category.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants.dart';
import 'categories_item_widget.dart';

// ignore: must_be_immutable
class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({Key? key}) : super(key: key);
  List<Category> categories = [
    Category(name: "الطلب السريع", image: 'assets/images/fast_order.png'),
    Category(name: "المطاعم", image: 'assets/images/restrnt.png'),
    Category(name: "بقاله", image: 'assets/images/beqala.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(tr('categories'),
              style: Theme.of(context).textTheme.titleLarge),
        ),
        Padding(
          padding: const EdgeInsets.all(soSmallPadding),
          child: categories.isNotEmpty
              ? SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, int index) =>
                          CategoriesItemWidget(
                            category: categories[index],
                          )),
                )
              : Center(child: Text(tr("not_have_data"))),
        )
      ],
    );
  }
}
