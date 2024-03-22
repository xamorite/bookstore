import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
  final String? uid;
  final String? username;
  final String? email;
  DatabaseService({this.uid, this.username, this.email, });
  //collection reference
  final CollectionReference profile = FirebaseFirestore.instance.collection('Profile');
  Future updateUserData(String name, String email, String s,)async{
    return  await profile.doc(uid).set({
      'name': name,
      'email': email,
      'location':s,
    });
  }
  // get profile stream
 // Stream<QuerySnapShot> get Profile{
 //    return profile.snapshots();
 //  }
}