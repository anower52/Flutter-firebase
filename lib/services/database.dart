import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  //collection refrence

  final CollectionReference brewCollection =
      FirebaseFirestore.instance.collection('brews');
}
