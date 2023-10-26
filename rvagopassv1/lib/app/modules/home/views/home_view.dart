import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:14.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20.0,left: 30),
                child: Row(
                  children: [
                   Container(
                    height: 50,
                    width: 20,
                    decoration:const BoxDecoration(
                      
                     // color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                     ),
                    child:  IconButton(onPressed: (){}, icon:const Icon(Icons.settings),)
                   ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(left:200.0),
                       
                       child: Container(
                        width: 20,
                        decoration:const BoxDecoration(
                         // color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                         ),
                        child:IconButton(onPressed: (){},icon: const Icon(Icons.supervised_user_circle),),
                       ),
                     ),
                   ),
                    
                  ],
                  
                ),
              ),
              
               Column(
                  children: [
                   const Text("Paiement Document Scan"),
                    Container(
                      //child: ,
                    ),
                    Container(
                      height: 200,
                      width: 200,                     
                      decoration:const BoxDecoration(                        
                         image: DecorationImage(image:AssetImage('assets/images/codeqr.jpg'),
                          //opacity: 0.2,
                         fit: BoxFit.cover),
                        //color:Colors.grey[300],
                      ),
                     
                    ),
                    //Image('qrcode1')   
                   
                  ],
                 ),
                Container(
                  color: Colors.white,
                  child: Stack(
                    children: [
                       Padding(
                   padding: const EdgeInsets.only(top:20.0),
                   child: Container(
                    height: 400,
                    width: 400,
                    
                    decoration: BoxDecoration(     
                      color:Colors.grey[300],
                      
                      borderRadius:const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                     ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:  Column(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(" RVA GOMA "),
                                Text("CONTROL DE LA TAXE IDDEF "),
                                Text(""),
                                Text("Bienvenue ici nous faisons le controle de la taxe de go pass pour permetre la reabilitation des aeroports de la RDC ",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 14),),
                                Text("cher agent notre application est tres simple a utiliser il  suffut de prendre le document du passager scanner et puis voir si son document est bien authentique ",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 14)),
                              ],
                            ),
                          ),
                          
                                                
                            
                        ],
                      ),
                    )
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top:200.0),
                   child: Container(                  
                    height: 220,
                    width: 400,
                     decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius:const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight:Radius.circular(20))
                        
                     ),
                     child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                            child: Container(
                              width: 325,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.white70,
                              ),
                              child:TextButton(onPressed:() {}, child:const Text("Scanner")),
                            ),
                          ),
                        ),                     
                      ],
                     ),
                   ),
                 ),
                    ],
                  ),
                )
            ]
            ),
        ),
      )
      
    );
  }
}
