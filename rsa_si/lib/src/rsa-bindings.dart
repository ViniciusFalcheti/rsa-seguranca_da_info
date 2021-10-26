import 'package:get/get.dart';
import 'package:rsa_si/src/rsa-controller.dart';

class RsaBindings extends Bindings{
    
    @override

    void dependencies(){
      Get.lazyPut<RsaController>(() => RsaController());
    }
    
}