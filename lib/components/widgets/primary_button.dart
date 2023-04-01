import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/constants.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  PrimaryButton({Key? key,required this.title,required this.onClick}) : super(key: key);
  String title;
  VoidCallback onClick;
  int? step;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
          backgroundColor: accentColor,
          shape: const StadiumBorder()
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: defaultPadding,bottom: defaultPadding,left: soBigPadding,right: soBigPadding),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title,style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white),
              ),
            ],
          )
        ),
      ),
    );
  }
}
