import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rvagopass/app/modules/paiement/views/paiement_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put<HomeController>(HomeController());
    return Scaffold(
       appBar: AppBar(
        title: const Text("Controle de taxe"),
        actions: <Widget>[
          //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor:  Colors.blue.shade300,
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {
            Get.to(() => PaiementView());
          },
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ), //AppBar
      //backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:14.0),
          child: Column(
            children: [
               Column(
                  children: [
                   const Text("Paiement Document Scan",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
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
                      color:Colors.grey[100],
                      
                      borderRadius:const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                     ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:  Column(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(" RVA GOMA",style:TextStyle( fontWeight: FontWeight.bold)),
                                Text("CONTROL DE LA TAXE IDDEF "),
                                Text(""),
                                Text("Bienvenue ici nous faisons le controle de la taxe de go pass pour permetre la reabilitation des aeroports de la RDC ",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 14),),
                                Text("cher agent notre application est tres simple a utiliser il  suffut de prendre le document du passager scanner et puis voir si son document est bien authentique ",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 14)),
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
                   padding: const EdgeInsets.only(top:220.0),
                   child: Container(                  
                    height: 220,
                    width: 400,
                     decoration: BoxDecoration(
                      color: Colors.grey[100],
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
                              decoration:  BoxDecoration(
                                borderRadius:const BorderRadius.all(Radius.circular(40)),
                              //color: Colors.white70,
                              color: Colors.blue.shade300,
                              ),
                              child:TextButton(onPressed:() {
                                controller.scannerQrCode();
                              }, child:const Text("Scanner",style: TextStyle(color: Colors.white),)),
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
