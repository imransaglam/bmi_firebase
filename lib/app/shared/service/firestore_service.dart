import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FirestoreService extends GetxController{
  var user=FirebaseAuth.instance.currentUser;
  FirebaseFirestore db=FirebaseFirestore.instance;
  Future<FirestoreService>init() async {
    return this;
    }
    Future<void>addUserInfo(height,weight,result)async{
        return await db
        .collection('user').
        doc(user!.email!).
        collection('bmi').
        doc()
        .set({
          'height':height,
          'weight':weight,
          'result':result,
        })
        .then((value) => print("BMI Calculated"))
        .catchError((error)=>print("Failed to add user:$error"));
    }

}