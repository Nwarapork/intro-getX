import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}

// get.put(dependancy) : ทำการสร้างเลย เมื่อมีการทำ binding
// get.lazyPut(function) : binding เอาไว้แต่ยังไม่สร้าง รอจนกว่าจะมีการใช้งาน ถึงจะสร้าง
// get.create(function) 
// get.putAsync(Future function)

// put, lazyPut, putAsync is singleton