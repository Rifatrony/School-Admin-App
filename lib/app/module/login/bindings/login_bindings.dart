import 'package:get/get.dart';
import 'package:srmm/app/module/login/controllers/login_controller.dart';

class LoginBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LoginController>(() => LoginController());
  }

}