import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:zephyr_app/models/user.dart';
import 'package:zephyr_app/models/vehicle.dart';

class DataBaseService {
  final String uid;
  DataBaseService({required this.uid});

  // collection reference
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  /// Create a new user document
  Future<bool> createUserData(UserModel newUser) async {
    try {
      await userCollection.doc(uid).set(newUser.toMap());
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  /// Update user data
  /// [newUser] is the new user data
  Future<bool> updateUserData(UserModel newUser) async {
    try {
      await userCollection.doc(uid).update(newUser.toMap());
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  /// Get user data
  Future<UserModel> getUserData() async {
    try {
      DocumentSnapshot doc = await userCollection.doc(uid).get();
      return UserModel.fromMap(doc.data()! as Map<String, dynamic>);
    } catch (e) {
      print(e.toString());
      return UserModel(
        uid: '',
        displayName: '',
        email: '',
        authType: AuthType.email,
      );
    }
  }

  /// Get user data stream
  Stream<UserModel> get userData {
    return userCollection.doc(uid).snapshots().map((doc) {
      return UserModel.fromMap(doc.data()! as Map<String, dynamic>);
    });
  }

  /// Get Vehicle data
  Future<VehicleModel> getVehicleData() async {
    try {
      DocumentSnapshot doc = await userCollection.doc(uid).get();
      return VehicleModel.fromMap(
          (doc.data()! as Map<String, dynamic>)['vehicle']);
    } catch (e) {
      print(e.toString());
      return VehicleModel(
        vehicleType: VehicleType.car,
        fuelType: FuelType.gasoline,
        vehicleName: '',
      );
    }
  }

  /// Set Vehicle data
  /// [newVehicle] is the new vehicle data
  Future<bool> setVehicleData(VehicleModel newVehicle) async {
    try {
      await userCollection.doc(uid).update({'vehicle': newVehicle.toMap()});
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }
}
