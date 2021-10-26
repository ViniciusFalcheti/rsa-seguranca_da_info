import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RsaController extends GetxController with StateMixin{

  RxString p = "".obs;
  RxString q = "".obs;
  RxString d = "".obs;

    void pChanged(String val) {
      p.value = val;
    }

    void qChanged(String val) {
      q.value = val;
    }

    void dChanged(String val) {
      d.value = val;
    }

    textField({String? labelText, TextEditingController? textEditingController, String? x}){
    return TextField(
      obscureText: false,
      decoration: InputDecoration(
        hintText: labelText,
        border: OutlineInputBorder(),
        focusColor: Colors.white,
      ),
      onChanged: pChanged 
    );
  }
  

  RxInt P = 0.obs;
  RxInt Q = 0.obs;

  bool eprimo(int x){
    int i;
    int count = 0;
    for(i = x - 1; i>=1; i--){
      if(x % i == 0){
        count++;
      }
    }
    if(count > 1){
      return false;
    }
    else{
      return true;
    }   
  }

  int mdc(x,y){
    int resto = 1;
    while(y != 0){
      resto = x % y;
      x = y;
      y = resto;
      return x;
    }
    return 0;
  }


  bool teste(int x, int y){
    if (eprimo(x) == false || eprimo(y) == false){
      Get.snackbar("Erro", "P ou Q não é primo");
    }

    int N = x * y;
    int Z = (x-1) * (y-1);

    int i;
    
    return true;
  }

  


}