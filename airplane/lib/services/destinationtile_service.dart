import 'package:airplane/models/destination_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Destinationtile {
  
  CollectionReference _destinationtile = 
    FirebaseFirestore.instance.collection('destinationtile');

  Future<List<DestinationModel>> fetchDestinationstile() async {

    try {
      
      QuerySnapshot result = await _destinationtile.get();

      List<DestinationModel> destinationtile = result.docs.map((e){
        return DestinationModel.fromJson(
          e.id, e.data() as Map<String, dynamic>);
       },
      ).toList();

      return destinationtile;
    } catch (e) {
      throw e;
    } 
  }



}