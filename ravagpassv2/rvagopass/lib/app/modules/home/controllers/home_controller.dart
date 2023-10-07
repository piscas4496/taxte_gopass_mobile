import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:rvagopass/app/modules/paiement/views/paiement_view.dart';

class HomeController extends GetxController with StateMixin {
  String scannedQrcode = '';
  //TODO: Implement HomeController

  final count = 0.obs;
  
  
  var qrcode = 'Unknown'.obs;
  Future<void>scannerQrCode() async{
    try {
      final qrCode=await FlutterBarcodeScanner.scanBarcode(
       '#ff6666',
      'cancel',
         true, 
          ScanMode.QR);
       this.qrcode.value=qrCode;
       if(qrCode.isNumericOnly){
        Get.to(const PaiementView(),arguments: qrCode);
      
       }else{
        Get.snackbar('User', 'votre document n\'est pas reconu');
       }
    } on PlatformException{
      qrcode.value='failled to get plateforme version';
    }
  }
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }}
class ScannerController extends GetxController{
  
  




  // Future<void> ScanQR() async {
    
  //   try {
  //      scannedQrcode = await FlutterBarcodeScanner.scanBarcode(
        
  //       '#ff6666',
  //       'cancel',
  //       true,
  //       ScanMode.QR,
       
  //     );
  //       if (scannedQrcode.isNum) {
  //        Get.to(PaiementView(), arguments: scannedQrcode);
  //       }
     
  //   } catch (e) {
  //     log(e.toString());
  //   }
    // try {
     
    //    if(scannedQrcode!="-1"){
         
    //       //searchSingleData( );
    //       Get.to(fetchSiglePaiement);
    //     }
    //  } on  PlatformException {   
  // }
// }

}

