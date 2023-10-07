import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/paiement_controller.dart';

class PaiementView extends GetView<PaiementController> {
  const PaiementView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    PaiementController controller=Get.put<PaiementController>(PaiementController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('PaiementView'),
        centerTitle: true,
      ),
      body: Obx(() =>  SingleChildScrollView(
        child:controller.load.value?const Center(child: CupertinoActivityIndicator(),): Column(
          children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height:360,
                
                decoration:const BoxDecoration(
                  color: Colors.black87,
                  
                 // image: DecorationImage(image:AssetImage('assets/images/codeqr.jpg'),
                  image: DecorationImage(image:AssetImage('assets/images/contoller2.jpg',
                ),
                opacity: 0.2,
                 fit: BoxFit.cover
                  
                 )
                  
                ),
                child:const Stack(
                  children: [
                    Column(
                      children: [
                         Text("CHER AGENT SI LE PASSAGER EST EN ORDRE PRIERE DE LUI LIBERER! ",style: TextStyle(color: Colors.yellow,fontSize: 10,fontWeight: FontWeight.bold),),
                         Text("your welcome in our plateforme if the traval ",style: TextStyle(color: Colors.white)),
                         Text("your welcome in our plateforme if the traval",style: TextStyle(color: Colors.white)),
                         Text("your welcome in our plateforme if the traval ",style: TextStyle(color: Colors.white)),
                         Text("your welcome in our plateforme if the traval ",style: TextStyle(color: Colors.white)),
                         Text("your welcome in our plateforme if the traval ",style: TextStyle(color: Colors.white)),
                        
                      ],
                    ),
                   
                   
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: 350,
                color: Colors.blue.shade100,
                child: Column(
              children: [
                const Text(" RVA GO PASS  "),
              Text(" paiement du passager"+'  '+ "${controller.paiementModel?.passager}",style: const TextStyle(fontSize: 16,),),
              Text("${controller.paiementModel?.motif}"),
              Text("${controller.paiementModel?.agePassager}"),
              Text("${controller.paiementModel?.emailPassager}"),
              Text("${controller.paiementModel?.agent}"),
              ],
                ),
              ),
            ),
           
          ]
        ),
      ))
    );
  }
}
