import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:rvagopass/app/data/paiementModel.dart';
//import 'package:rvagopass/app/modules/home/views/home_view.dart';
import 'package:rvagopass/app/services/dioServices/DioService.dart';

class PaiementController extends GetxController {
  Dio dio=Dio(BaseOptions(baseUrl: Api.baseUrlVersion, contentType: "application/json"));
  //Dio errorStatus=Dio(BaseException:Api.response);
 PaiementModel ?paiementModel;
  var load=true.obs;
    fetchSiglePaiement() async {
      try {
        load.value=true;
        dio.interceptors.add(PrettyDioLogger());
        var rep = await dio.get("${Api.paiement}/${Get.arguments}");
        if (rep.statusCode==200) {
          paiementModel=PaiementModel.fromJson(rep.data);
          load.value=false;
        }else if(rep.statusCode==404){
          Get.snackbar('error','Page Not Found');
          }      
      } catch (e) {

        Get.back();
        load.value=false;
        log(e.toString());
       // Get.snackbar('error',e.toString()); 
      }
    
      // change(null, status: RxStatus.loading());
      // await HttpService.request(
      //   HttpMethod.get,
      //   baseUrl: Api.host,
      //   '${Api.paiement}/${Get.arguments}',
      // ).then((response) {
      //   if (response != null) {
      //     var data = PaiementModel.fromJson(response);
      //     Get.toNamed(Routes.AUTH, arguments: data)!.then((value) {
      //       if (value != null) {
      //         Get.back(result: value);
      //       }
      //     });
      //   }
      // }).catchError((error){
      //    String message = 'Error occured';
      // if (error is BaseException) {
      //   message = error.message!;
      // }
      // // change(null, status: RxStatus.error(message));
      // });
    }

  //final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    fetchSiglePaiement();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  //void increment() => count.value++;
}
