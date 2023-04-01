import 'package:creative_minds_flutter_challenge/components/design_task_screen/model/order.dart';
import 'package:creative_minds_flutter_challenge/components/design_task_screen/ui/re_order_item_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

// ignore: must_be_immutable
class ReOrderWidget extends StatelessWidget {
  ReOrderWidget({Key? key}) : super(key: key);
  List<Order> orders = [
    Order(name: "وجبه العائله", restaurantImage: 'assets/images/indian.png',restaurant: "مطعم هندي"),
    Order(name: "متجر السلام", restaurantImage: 'assets/images/indian.png',restaurant: "طلب سريع"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(tr('re_order'),
              style: Theme.of(context).textTheme.titleLarge),
        ),
        Padding(
          padding: const EdgeInsets.all(soSmallPadding),
          child: orders.isNotEmpty
              ? SizedBox(
                  height: 130,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: orders.length,
                      itemBuilder: (BuildContext context, int index) =>
                          ReOrderItemWidget(
                            order: orders[index],
                          )),
                )
              : Center(child: Text(tr("not_have_data"))),
        )
      ],
    );
  }
}
