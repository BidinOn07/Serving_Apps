import 'package:get/get.dart';

import '../controllers/waiters_controller.dart';

class WaitersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WaitersController>(
      () => WaitersController(),
    );
  }
}
