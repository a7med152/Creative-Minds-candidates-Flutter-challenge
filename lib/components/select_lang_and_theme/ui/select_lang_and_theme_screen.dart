import 'package:easy_localization/easy_localization.dart';
import 'package:creative_minds_flutter_challenge/components/select_lang_and_theme/ui/widgets/select_lang_and_theme_button.dart';
import 'package:creative_minds_flutter_challenge/components/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app/app.dart';
import '../../../utils/constants.dart';
import '../../widgets/help_widget.dart';

class SelectLangAndTheme extends StatefulWidget {
  const SelectLangAndTheme({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SelectLangAndThemeState createState() => _SelectLangAndThemeState();
}

class _SelectLangAndThemeState extends State<SelectLangAndTheme>{

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Center(
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(height: soBigSize,),
                  Row(
                    children: [
                      Text(tr('choose_lang'),style: Theme.of(context).textTheme.bodyMedium,)
                    ],
                  ),
                  defaultSpaceV,
                  Row(
                    children: [
                      SelectLangAndThemeButton(title: "English",isSelected: context.locale == english,onClick: () {
                        setState(() {
                          context.setLocale(english);
                          Get.updateLocale(english);
                        });
                      },),
                      smallSpaceH,
                      SelectLangAndThemeButton(title: "Arabic",isSelected: context.locale == arabic,onClick: () {
                        setState(() {
                          context.setLocale(arabic);
                          Get.updateLocale(arabic);
                        });
                      },)
                    ],
                  ),
                  const SizedBox(height: bigPadding,),
                  PrimaryButton(title: tr('start'), onClick: () {
                    appNotifier.goToRoute('/home');
                  })
                ],
              ),
            ),
          )
        ],

      ),
    );
  }
}
