import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rsa_si/src/rsa-controller.dart';


class RsaPage extends GetView<RsaController> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RSA", style: TextStyle(fontSize: 26),),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "Digite um primo 'P'",
                  border: OutlineInputBorder(),
                  focusColor: Colors.white,
                ),
                onChanged: controller.pChanged,
                keyboardType: TextInputType.number,
              ),

            SizedBox(height:  10,),

  
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "Digite um primo 'Q'",
                  border: OutlineInputBorder(),
                  focusColor: Colors.white,
                  
                ),
                onChanged: controller.qChanged,
                keyboardType: TextInputType.number,
              ),

            SizedBox(height:  10,),

              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "Digite um primo 'D' que seja primo em relação a Z",
                  border: OutlineInputBorder(),
                  focusColor: Colors.white,
                  
                ),
                onChanged: controller.dChanged,
                keyboardType: TextInputType.number,
              ),

            SizedBox(height:  10,),

            TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "Frase que será encriptada",
                  border: OutlineInputBorder(),
                  focusColor: Colors.white,
                  
                ),
                onChanged: controller.dChanged,
                keyboardType: TextInputType.number,
              ),

            SizedBox(height:  10,),

            ElevatedButton(
              onPressed: () {
                if (controller.eprimo(int.parse(controller.p.value)) == false || controller.eprimo(int.parse(controller.q.value)) == false){
                  Get.snackbar("Erro", "Um dos valores não é primo");
                }
                else{
                  SizedBox(height: 15,);
                  Obx(() => 
                    Text(controller.p.value)
                  );
                }              
              }, 
              child: Text("Calcular", style: TextStyle(fontSize: 22),),
            ),
          ],
        ),
      )

    );
  }
}