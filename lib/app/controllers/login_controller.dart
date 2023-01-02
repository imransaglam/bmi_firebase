
import 'package:bmifirebase/app/shared/service/auth_service.dart';
import 'package:bmifirebase/app/shared/service/firebase_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
TextEditingController loginmail=TextEditingController();
TextEditingController loginpassword=TextEditingController();
TextEditingController signupmail=TextEditingController();
TextEditingController signuppassword=TextEditingController();
AuthService auth=AuthService();
}
  