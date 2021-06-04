import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  final CollectionReference userCollection =
      Firestore.instance.collection('userDetails');
  Future updateUserData(String name, String phoneNo, String email) async {
    return await userCollection.document(uid).setData(
        {"Full Name": name, 
        "Email Address": email,
        "Phone Number": phoneNo,         
        });
  }
}
