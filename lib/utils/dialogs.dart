import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/app.dart';

void showErrorToast(String message) async {
  Get.snackbar(
      tr('error'),
      message,
      backgroundColor: Colors.red,
      icon: const Icon(Icons.error),
      isDismissible: true,
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 5)
  );
}

void showSuccessToast(String message){
  Get.snackbar(
      tr('done'),
      message,
      backgroundColor: Colors.greenAccent,
      icon: const Icon(Icons.done),
      isDismissible: true,
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 5)
  );
}

void showWarningToast(String message){
  Get.snackbar(
      tr('warning'),
      message,
      backgroundColor: Colors.orangeAccent,
      icon: const Icon(Icons.warning),
      isDismissible: true,
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 5)
  ).show();
}

void showNotification({required String title,required String subTitle,required String fundId}) async {
  Get.snackbar(
      title,
      subTitle,
      onTap: (_){
        Get.back();
        appNotifier.goToRouteWithBack('/Funds_details_screen',
            arguments: int.parse(fundId));
      },
      backgroundColor: Colors.black12,
      icon: const Icon(Icons.notifications),
      isDismissible: true,
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 3)
  );
}

// void showCustomToast(String message){
//   fToast.showToast(
//     child: Container(child: Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),),
//     gravity: ToastGravity.BOTTOM,
//     toastDuration: Duration(seconds: 2),
//   );
// }



