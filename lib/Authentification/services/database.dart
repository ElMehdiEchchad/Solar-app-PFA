import 'package:cloud_firestore/cloud_firestore.dart';


class DatabaseMethods {

 getUserByUsername(String username) async{
     return await Firestore.instance
        .collection("users")
        .where('name', isEqualTo: username)
        .getDocuments();
 }
 
 uplodUserInfo(userMap){
  Firestore.instance.collection("users").add(userMap).catchError((e) {
      print(e.toString());
    });
 }

}