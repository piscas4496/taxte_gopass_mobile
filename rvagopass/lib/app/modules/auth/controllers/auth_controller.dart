import 'package:get/get.dart';
import 'package:rvagopass/app/data/loginModel.dart';
import 'package:rvagopass/app/services/dioServices/DioService.dart';
//import 'package:rvagopass/app/services/dioServices/error_alert_handler.dart';
import 'package:rvagopass/app/utils/index.dart';

class AuthController extends GetxController  {
  //with ErrorAlertHandler 
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  //TODO: Implement AuthController
  
  var isLoanding = false.obs;
  final userItems = <User>[].obs;
  User? user;

  var email = '';
  var password = '';

  final count = 0.obs;
  login() async {
    try {
      isLoanding.value = true;
      User user = User(
        email: emailController.text,
        password: passwordController.text,
        device_name: 'mobile',
      );

      await HttpService.request(
              HttpMethod.post,
              baseUrl: Api.baseUrlVersion,
              Api.login,
              payload: user)
          .then((data) {
        if (data != null && data is Map) {
          // Add null and type check here

          if (data['success'] == true) {
            isLoanding.value = false;
            String token = data['data']['token'];
            String name = data['data']['user']['name'];
            String email = data['data']['user']['email'];

            // print(token);

            Get.offAndToNamed(Routes.HOME);

            Get.snackbar(
              'Succes',
              '${data['message']}',
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green,
              colorText: Colors.white,
              duration: const Duration(seconds: 4),
              borderRadius: 20,
              margin: const EdgeInsets.all(15),
            );
           // AppPrefs.to.userEmail.val = email;
           // AppPrefs.to.userName.val = name;
            //AppPrefs.to.token.val = token;
             //getUserData();
          }
        } else {
          // Handle null or invalid data case here
          isLoanding.value = false;
          Get.snackbar('Error', 'Absenece de la connexion',
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red,
              colorText: Colors.white);
        }
      });//.catchError(onErrorDialog);
    } catch (e) {
      isLoanding.value = false;
      //onErrorDialog(e);
    } finally {
      await Future.delayed(3.seconds);
      isLoanding.value = false;
    }
  }

  //final count = 0.obs;
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
  }
  
   //String? email;
  //String? password;
  String? token;
  final formkey = GlobalKey<FormState>();

  final agree = false.obs;
  //void increment() => count.value++;
}
