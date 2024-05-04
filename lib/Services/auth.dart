import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:testprojmobile/Model/userr.dart';
import 'package:testprojmobile/Services/database.dart';



class authService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  userr? _userFromFirebaseUser(User user) {
    return user != null ? userr(uid: user.uid) : null;
  }

  Stream<User?> get onAuthStateChanged => _auth.authStateChanges();

  Future SignInWithEmailAndPassword(String email,String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);

      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future RegisterWithEmailAndPassword(String email, String phone, String fname, String lname, String uname, String password, String street, String city, String statee, String country) async{
    try{


      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user= result.user;

      await DatabaseService(uid: user!.uid).updateUserData(email, phone, fname, lname, uname, password, street, city, statee, country);

      return _userFromFirebaseUser(user!);

    }catch(e){
      print(e.toString());
      return null;
  }
}

  Future RegisterProjects(String pname, String desc, String pic, String amount, String date) async{
    try{
      User? user = _auth.currentUser;

      await DatabaseService(uid: user!.uid).updateProjectData(pname, desc, pic, amount, date);

      return _userFromFirebaseUser(user!);

    }catch(e){
      print(e.toString());
      return null;
    }
  }

}