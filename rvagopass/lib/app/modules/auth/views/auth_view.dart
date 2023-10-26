import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rvagopass/app/modules/home/views/home_view.dart';
//import 'package:rvagopass/app/modules/home/views/home_view.dart';
import 'package:rvagopass/app/shared/components/app_text_field.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.put<AuthController>(AuthController());
    return Scaffold(
     
      body: SingleChildScrollView(
        child:    
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Container(
                height: 300,
                width: 400,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100.0),
                      bottomRight: Radius.circular(100.0)),
                  // border: Border.all(
                  // color: Colors.black,
                  //width: 1,
                ),
                child: Image.asset(
                  "assets/images/ingenieur.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 30.0,
              width: 400.0,
              decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0))),
              child: const Center(
                  child: Text(
                "DIABES",
              )),
            ),
            Padding(
              padding:  EdgeInsets.all(12.0),
              child:  AppTextField(
                 controller: controller.emailController,
                
                labelText: 'mail adress',
                hintText: 'Entrer votre adresse mail',
              ).paddingOnly(bottom: 10.0),
            ),
             Padding(
             
              padding: EdgeInsets.all(12.0),
              child: AppTextField(
                 //controller:password,
                 controller: controller.passwordController,
                labelText: 'Password',
                hintText: 'Entrer votre mot de passe',
                prefixIconData: Icons.lock_outlined,
                isPassword: true,
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(50)),
              child: TextButton(
                  onPressed: () {
                   // controller.login();
                    Get.to(() => HomeView());
                  },
                  child: const Text(
                    "Connexion",
                    style: TextStyle(color: Colors.white),
                  )),
            ).marginOnly(top: 20, bottom: 10),
          ],
        ),
      ),
      
    );
  }
}
