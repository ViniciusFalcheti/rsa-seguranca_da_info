

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rsa_si/src/rsa-bindings.dart';
import 'package:rsa_si/src/rsa-page.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: "/", 
          page: () => RsaPage(),
          binding: RsaBindings(),
          
        )
      ],
    );
  }
}