import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<List<QueryDocumentSnapshot>> getAllKategories() async {
    QuerySnapshot querySnapshot =
        await firestore.collection('kategoriler').get();
    return querySnapshot.docs;
  }
}
