import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseService {

  final String uid;
  DataBaseService({ this.uid });

  // collection reference
  final CollectionReference brewCollection = FirebaseFirestore.instance.collection('users');

  /// Create a new user document
  /// 
}