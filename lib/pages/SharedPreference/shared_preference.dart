import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesClasss {
  int id;
  String firstName,lastName,email,photo,gender;
  SharedPreferences sharedPreferences;
 getEmail()async{
   sharedPreferences=await SharedPreferences.getInstance();
   return sharedPreferences.getString("email");

 }
 getFirstName()async{
   sharedPreferences=await SharedPreferences.getInstance();
   return sharedPreferences.getString("firstName");
 }
 getLastName()async{

 }
 getGender()async{

 }
 getPhoto()async{

 }
}