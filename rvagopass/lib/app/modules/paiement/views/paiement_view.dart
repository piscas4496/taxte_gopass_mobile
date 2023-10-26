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
        title: const Text('RVA CONTROLLE'),
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
                        //  Text("your welcome in our plateforme if the traval ",style: TextStyle(color: Colors.white)),
                        //  Text("your welcome in our plateforme if the traval",style: TextStyle(color: Colors.white)),
                        //  Text("your welcome in our plateforme if the traval ",style: TextStyle(color: Colors.white)),
                        //  Text("your welcome in our plateforme if the traval ",style: TextStyle(color: Colors.white)),
                        //  Text("your welcome in our plateforme if the traval ",style: TextStyle(color: Colors.white)),
                        
                      ],
                    ),
                   
                   
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 220,
                width: 350,
                
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                 // boxShadow: 
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
              children: [
           const Center(child:  Text(" RVA GO PASS  ",style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("passager"),
                       Text("${controller.paiementModel?.passager}",style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),                      
                      const Padding(
                         padding:  EdgeInsets.only(top:8.0),
                         child: Text("age du passager"),
                       ),
                       Text("${controller.paiementModel?.agePassager } ans",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                       Padding(
                       padding:  EdgeInsets.only(top:8.0),
                         child: Text("Date Paiement"),
                       ),
                       Text("${controller.paiementModel?.datepaiement }",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                    
                    ],
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("motid de paiement"),
                       Text("${controller.paiementModel?.motif}",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                       
                    const  Padding(
                         padding:  EdgeInsets.only(top:10.0),
                         child: Text("Adresse mail du passager"),
                       ),
                    Text("${controller.paiementModel?.emailPassager}",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                    
                      const  Padding(
                         padding:  EdgeInsets.only(top:10.0),
                         child: Text("Telephone passager"),
                       ),
                    Text("${controller.paiementModel?.telephone}",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            ),
            
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Text("Agent Comptable",style: TextStyle(fontSize: 14,),),
                     Text("${controller.paiementModel?.agent}",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ],),
                ),
              )
              
              
             
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
