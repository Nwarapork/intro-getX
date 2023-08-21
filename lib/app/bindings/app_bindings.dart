import 'package:get/get.dart';
import 'package:intro_getx/app/controllers/app_controller.dart';
import 'package:intro_getx/app/data/providers/api_provider.dart';


// ได้ Binding แล้ว ให้เอาไป inject ที่ main
class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(
      () => AppController(),
    );
    Get.lazyPut<ApiProvider>(
      () => ApiProvider(),
    );
  }
}