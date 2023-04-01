import 'package:creative_minds_flutter_challenge/components/design_task_screen/model/category.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants.dart';
import '../../widgets/help_widget.dart';

class CategoriesItemWidget extends StatelessWidget {
  final Category category;
  const CategoriesItemWidget({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(soSmallPadding),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(defaultRadius),
                ),
                child:ExtendedImage.asset(
                        category.image ?? "",
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
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              category.name ?? "",
              maxLines: 2,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
