import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:internet_connection_checker/internet_connection_checker.dart';


Future<bool> checkInternet() async {
  return await InternetConnectionChecker().hasConnection;
}


Future<ui.Image> bytesToImage(Uint8List imgBytes) async{
  ui.Codec codec = await ui.instantiateImageCodec(imgBytes);
  ui.FrameInfo frame = await codec.getNextFrame();
  return frame.image;
}