import 'package:creative_minds_flutter_challenge/utils/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

////////////////////////////////////////////////////////////////
var cardRounded = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(22),
);
var cardRoundedZero = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(0.0),
);
var cardRoundedTop = const RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
);
var cardRoundedBottom = const RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(20.0),
    bottomRight: Radius.circular(20.0),
  ),
);
////////////////////////////////////////////////////////////////
final textFiledBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(marginMin),
  borderSide: const BorderSide(),
);
var radiusButton = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(paddingBig),
);
///////////////////////////////////////////////////////////////////////
var shipRounded = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(12),
);
/////////////////////////////////////////////////////////////////////
const double marginMin = 8;
const double paddingBig = 16;
const double elevation = 6;
const double elevationSmall = 4;
////////////////////////////////////////////////////////////////////
Widget loadingWidget = const Center(
  child: CircularProgressIndicator(color: Colors.red,),
);



Widget smallSpaceV = const SizedBox(
  height: smallPadding,
);
Widget defaultSpaceV = const SizedBox(
  height: defaultPadding,
);
Widget bigSpaceV = const SizedBox(
  height: bigPadding,
);

Widget smallSpaceH = const SizedBox(
  width: smallPadding,
);
Widget defaultSpaceH = const SizedBox(
  width: defaultPadding,
);
Widget bigSpaceH = const SizedBox(
  width: bigPadding,
);


Widget selectUrlDialog(BuildContext context) {
  return AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
            onTap: () {
              Navigator.of(context).pop(1);
            },
            child: Row(
              children: [
                smallSpaceH,
                Text(
                    tr('repository'),
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                ),
              ],
            )),
        smallSpaceV,
        InkWell(
            onTap: () {
              Navigator.of(context).pop(2);
            },
            child: Row(
              children: [
                smallSpaceH,
                Text(
                    tr('owner'),
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                ),
              ],
            )),
      ],
    ),
  );
}

