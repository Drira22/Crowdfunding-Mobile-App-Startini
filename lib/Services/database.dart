

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

    final String uid;
    DatabaseService({required this.uid});

    final CollectionReference Usercollection = FirebaseFirestore.instance.collection('Users');
    final CollectionReference Projectcollection = FirebaseFirestore.instance.collection('Projects');

    Future updateUserData(String email, String phone, String fname, String lname, String uname, String password, String street, String city, String statee, String country) async {
        return await Usercollection.doc(uid).set({
            "email":email,
            "phone":phone,
            "fname":fname,
            "lname":lname,
            "uname":uname,
            "password":password,
            "street":street,
            "city":city,
            "state":statee,
            "counrty":country});
    }
    Future updateProjectData(String pname, String desc, String pic, String amount, String date) async {
        return await Projectcollection.doc(uid).set({
            "pname":pname,
            "description":desc,
            "picture":pic,
            "amount":amount,
            "date":date});
    }
}
