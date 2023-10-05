import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AuthView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(),
              child: Stack(
                children: [
                 Column(
                  children: [
                     Container(                   
                  ),
                const  Text("")
                  ],
                 )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(),
              child: Column(
                children: [
                  TextFormField(),
                  TextFormField(),
                  Row(
                    children: [
                      // Checkbox(value: (){}, onChanged: (){})
                      TextButton(onPressed: (){}, child:const Text('ForgetPassword')),                     
                    ],
                  )                
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
