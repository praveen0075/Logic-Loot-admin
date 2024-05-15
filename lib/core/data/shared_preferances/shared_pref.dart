import 'package:shared_preferences/shared_preferences.dart';

class SharedPreffs{

  static const  adminKey = "admin_key";
  static const adminToken = "admin_token";

  static Future <void> adminLoggedIn() async{
    SharedPreferences preff = await SharedPreferences.getInstance();
    await preff.setBool(adminKey, true);
  }

  static Future<bool?> adminLoggedInorNot() async{
   SharedPreferences preff = await SharedPreferences.getInstance();
   bool? val =  preff.getBool(adminKey);
   return val;
  }

  static Future<void> saveAdminToken(String token) async{
    SharedPreferences preff = await SharedPreferences.getInstance();
    await preff.setString(adminToken,token);
  }

  static Future<String?> getAdminToken() async{
    SharedPreferences preff = await SharedPreferences.getInstance();
    String? admintoken =  preff.getString(adminToken);
    return admintoken;
  }
}