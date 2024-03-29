import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{

  TextEditingController emailController = TextEditingController();
  TextEditingController PassController = TextEditingController();

  var isLoginPassVisible = false.obs;
  var isRegPassVisible = false.obs;
  var isRegCPassVisible = false.obs;

  void toggleLoginPasswordVisibility(){
isLoginPassVisible.toggle();
  }
  void toggleRegPasswordVisibility(){
    isRegPassVisible.toggle();
  }
  void toggleRegCPasswordVisibility(){
    isRegCPassVisible.toggle();
  }
}