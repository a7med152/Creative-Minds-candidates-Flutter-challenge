import 'package:creative_minds_flutter_challenge/components/home_screen/ui/home_screen.dart';
import 'package:creative_minds_flutter_challenge/utils/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:creative_minds_flutter_challenge/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../bloc/authentication/bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool internetConnection = true;
  bool textStart = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
    _animationController.forward().whenComplete(() {
      init();
    });
    Future.delayed(const Duration(seconds: 1)).then((value) {
      setState(() {
        textStart = true;
      });
    });

    // fToast = FToast();
    // fToast.init(context);
    // showErrorToast(FlavorConfig.instance.variables["baseUrl"]);
  }

  void init() async {
    internetConnection = await checkInternet();
    if (internetConnection) {
      // ignore: use_build_context_synchronously
      AuthenticationBloc bloc = BlocProvider.of<AuthenticationBloc>(context);
      bloc.add(const AppStarted());
    } else {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: BlocProvider.of<AuthenticationBloc>(context),
      listener: (contextBloc, state) async {
        if (state is Uninitialized) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            '/',
            (route) => false,
          );
          return;
        }
        if (state is Authenticated) {
          Get.offAll(() => const HomeScreen());
          return;
        }
        if (state is Unauthenticated) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            '/home',
            (route) => false,
          );
          return;
        }
        if (state is FirstOpenApp) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            '/select_lang_and_theme',
            (route) => false,
          );
          return;
        }
        // if (state is ForceUpdate) {
        //   Navigator.of(context).pushNamedAndRemoveUntil(
        //     '/force_update',
        //         (route) => false,
        //   );
        //   return;
        // }
        // if (state is NoInternetConnection) {
        //   showErrorToast('please_check_internet_connection');
        //   // Navigator.of(context).pushNamedAndRemoveUntil(
        //   //   '/force_update',
        //   //       (route) => false,
        //   // );
        //   return;
        // }
        Navigator.of(context).pushNamedAndRemoveUntil(
          '/',
          (route) => false,
        );
      },
      child: Scaffold(
        body: Stack(
          children: [
            Center(
                child: internetConnection
                    ? const Center(
                      child: Icon(Icons.logo_dev,size: soBigSize,),
                    )
                    : InkWell(
                        onTap: init,
                        child: Text(
                          tr('no_internet'),
                          style: Theme.of(context).textTheme.titleLarge,
                        )))
          ],
        ),
      ),
    );
  }
}
