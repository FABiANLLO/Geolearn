import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolearn/User/model/user.dart';

class CloudFirestoreAPI {
  final String USERS = 'users';

  final Firestore _db = Firestore.instance;

  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(USERS).document(user.uid);
    return ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'testApproved': user.testApproved,
      'LastSignIn': DateTime.now()
    }, merge: true);
  }
}
