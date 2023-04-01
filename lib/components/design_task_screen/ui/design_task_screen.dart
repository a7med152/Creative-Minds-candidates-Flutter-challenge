import 'package:creative_minds_flutter_challenge/components/design_task_screen/ui/re_order_widget.dart';
import 'package:creative_minds_flutter_challenge/components/design_task_screen/ui/slider.dart';
import 'package:creative_minds_flutter_challenge/components/widgets/help_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import 'categories_widget.dart';

class DesignTaskScreen extends StatefulWidget {
  const DesignTaskScreen({Key? key}) : super(key: key);

  @override
  State<DesignTaskScreen> createState() => _DesignTaskScreenState();
}

class _DesignTaskScreenState extends State<DesignTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            bigSpaceV,
            Padding(
              padding: const EdgeInsets.all(smallPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined,color: Colors.black,),
                      smallSpaceH,
                      Text(
                        tr('location'),
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  Text(
                    tr('change'),
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(smallPadding),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          prefixIcon: const Icon(Icons.search),
                          hintText: tr('search'),
                          fillColor: const Color(0xffF5F5F5)
                      ),
                    ),
                  ),
                  smallSpaceH,
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffF5F5F5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(soSmallPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(smallPadding),
                                child: Icon(Icons.shopping_cart_outlined,color: Colors.black,),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: Text(
                                    "50",
                                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: 1,
                            height: 40,
                            color: Colors.grey,
                          ),
                          Text(
                            "300ج",
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            ImageSlideShow(),
            CategoriesWidget(),
            ReOrderWidget(),
            CategoriesWidget(),
          ],
        ),
      ),
    );
  }
}
