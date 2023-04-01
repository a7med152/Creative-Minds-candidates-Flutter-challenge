import 'package:creative_minds_flutter_challenge/utils/constants.dart';
import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';


// ignore: must_be_immutable
class SelectLangAndThemeButton extends StatelessWidget {
  SelectLangAndThemeButton({Key? key,required this.title,required this.isSelected,required this.onClick}) : super(key: key);
  String title;
  bool isSelected;
  VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
            backgroundColor: isSelected ? Colors.white : primaryColorLight,
        ),
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(title,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: isSelected ? Theme.of(context).colorScheme.secondary : Theme.of(context).primaryColor
            ),
          ),
        ),
      ),
    );
  }
}
