import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class AuthService extends GetxController{
  Future<AuthService> init() async{
    //createUser();
    return this;
   }
   createUser(email,password) async{
      try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    return Get.defaultDialog(title: 'The password provided is too weak.The password should have at least 6 characters');
  } else if (e.code == 'email-already-in-use') {
    return Get.defaultDialog(title: 'The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
    }

signUpAccount(email,password) async{
 try{
   final credential=await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email, 
    password: password).then((value) => Get.offAndToNamed(Routes.LOGIN));
    //print("Giriş yapıldı ${credential.user?.email}");
 }
 on FirebaseAuthException catch(e){
  if (e.code == 'user-not-found') {
        return Get.defaultDialog(title: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        return Get.defaultDialog(title: 'Wrong password provided for that user.');
      }
 }
}
}