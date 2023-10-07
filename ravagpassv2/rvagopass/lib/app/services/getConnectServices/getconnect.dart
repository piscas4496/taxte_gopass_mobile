// //import 'dart:developer';

// import 'package:get/get.dart';

// import 'local_storage.dart';

// class Services extends GetConnect {
//   // static const String mybaseUrl = "http://10.0.2.2:8000/api/v1/";
//   static const String mybaseUrl = "http://192.168.88.69:8000/api/v1";
//   var token = LocalStorage.getToken();
//   Future<Response> getDatas(String myUrl) async {
//     String url = format(myUrl);
//     var response = await get(url, headers: {
//       "Content-type": "application/json",
//       "Authorization": "Bearer $token"
//     });

//     // LocalStorage.saveToken(response.body['token'].toString());
//     return response;
//   }

//   Future<Response> SendDatas(String myUrl, Map data) async {
//     String url = format(myUrl);
//     var token = LocalStorage.getToken();
//     var response = await post(url, data, headers: {
//       "Content-type": "application/json",
//       "Authorization": "Bearer $token"
//     });
//     LocalStorage.saveUser(response.body['data']['user']);

//     return response;
//   }

//   //vaccinationmere/rendezvousmere

//   format(myurl) {
//     var url = mybaseUrl + myurl;

//     return url;
//   }
// }
