import 'package:creative_minds_flutter_challenge/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
import '../../../utils/colors.dart';
import '../../../utils/custom_image_slider/custom_image_slider.dart';
import '../../widgets/help_widget.dart';

// ignore: must_be_immutable
class ImageSlideShow extends StatelessWidget {
  ImageSlideShow({Key? key}) : super(key: key);

  List<String> images = ['assets/images/banner.png'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: ImageSlideshow(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.30,
        initialPage: 0,
        type: 2,
        indicatorColor: Theme.of(context).primaryColor,
        indicatorBackgroundColor: darkTextColor,
        onPageChanged: (value) {
          // print('Page changed: $value');
        },
        autoPlayInterval: 3000,
        isLoop: true,
        children: images.map((image) => ExtendedImage.asset(
          image,
          fit: BoxFit.cover,
          loadStateChanged: (ExtendedImageState state) {
            switch (state.extendedImageLoadState) {
              case LoadState.loading:
                return loadingWidget;
              case LoadState.completed:
                return state.completedWidget;
              case LoadState.failed:
                return Icon(
                  Icons.broken_image,
                  size: 85,
                  color: Theme.of(context).primaryColor,
                );
            }
          },
        ))
            .toList(),
      ),
    );
  }
}
