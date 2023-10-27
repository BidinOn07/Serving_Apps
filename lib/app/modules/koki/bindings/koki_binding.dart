import 'package:get/get.dart';

import '../controllers/koki_controller.dart';

class KokiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KokiController>(
      () => KokiController(),
    );
  }
}
