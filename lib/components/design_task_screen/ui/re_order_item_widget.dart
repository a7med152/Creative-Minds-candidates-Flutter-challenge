import 'package:easy_localization/easy_localization.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants.dart';
import '../../widgets/help_widget.dart';
import '../model/order.dart';

class ReOrderItemWidget extends StatelessWidget {
  final Order order;
  const ReOrderItemWidget({Key? key, required this.order})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: SizedBox(
        width: 250,
        height: 130,
        child: Padding(
          padding: const EdgeInsets.all(soSmallPadding),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(smallPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    smallSpaceH,
                    SizedBox(
                      width: 40,
                      height: 40,
                      child:  ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(defaultRadius),
                        ),
                        child:ExtendedImage.asset(
                          order.restaurantImage ?? "",
                          fit: BoxFit.fill,
                          loadStateChanged: (ExtendedImageState state) {
                            switch (state.extendedImageLoadState) {
                              case LoadState.loading:
                                return loadingWidget;
                              case LoadState.completed:
                                return state.completedWidget;
                              case LoadState.failed:
                                return Icon(Icons.broken_image,size: 85,color: Theme.of(context).primaryColor,);
                            }
                          },
                        ),
                      ),
                    ),
                    smallSpaceH,
                    Text(
                      order.name ?? "",
                      maxLines: 2,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.black),
                    ),
                  ],),
                  Row(
                    children: [
                      smallSpaceH,
                      const SizedBox(width: 40,),
                      smallSpaceH,
                      Text(
                        order.restaurant ?? "",
                        maxLines: 2,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  defaultSpaceV,
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                            child:  ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(defaultRadius),
                              ),
                              child:ExtendedImage.asset(
                                'assets/images/refrsh.png',
                                fit: BoxFit.fill,
                                loadStateChanged: (ExtendedImageState state) {
                                  switch (state.extendedImageLoadState) {
                                    case LoadState.loading:
                                      return loadingWidget;
                                    case LoadState.completed:
                                      return state.completedWidget;
                                    case LoadState.failed:
                                      return Icon(Icons.broken_image,size: 85,color: Theme.of(context).primaryColor,);
                                  }
                                },
                              ),
                            ),
                          ),
                          smallSpaceH,
                          Text(
                            tr('re_order'),
                            maxLines: 2,
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).primaryColor),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}
