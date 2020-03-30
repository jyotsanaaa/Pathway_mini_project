import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  // String currentLocation, destination;
  // String uid;

  // DatabaseService({this.currentLocation, this.destination});
  // DatabaseService({this.uid});

  // collection refrence
  final CollectionReference inpDB = Firestore.instance.collection('userInputs');

  updateUserData(String currentLocation, String destination){
    return inpDB.document().setData({
      'CurrentLocation': currentLocation,
      'Destination': destination,
    });
  }
}