import 'package:easy_localization/easy_localization.dart';
import 'package:creative_minds_flutter_challenge/components/widgets/help_widget.dart';
import 'package:flutter/material.dart';
import '../../../app/app.dart';
import '../../widgets/primary_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryButton(title: tr('dev_task_screen'), onClick: () {
              appNotifier.goToRoute('/dev_task_screen');
            }),
            bigSpaceV,
            PrimaryButton(title: tr('dev_task_screen'), onClick: () {
              appNotifier.goToRoute('/dev_task_screen');
            })
          ],
        ),
      ),
    );
  }
}
