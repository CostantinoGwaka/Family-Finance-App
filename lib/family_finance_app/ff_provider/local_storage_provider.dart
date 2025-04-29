import 'package:family_finance_app/family_finance_app/ff_models/user_model.dart';
import 'package:family_finance_app/family_finance_app/ff_utils/constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageProvider extends GetxController {
  //local storage

  Future<bool> setfTime(String token) async {
    final pref = await SharedPreferences.getInstance();
    return pref.setString(fTimeValue, token);
  }

  Future<String> getfTime() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(fTimeValue) ?? '';
  }

  Future<bool> saveToken(String? token) async {
    final pref = await SharedPreferences.getInstance();
    if (token == null) {
      return pref.remove(accessToken);
    }
    return pref.setString(accessToken, token);
  }

  Future<String> getToken() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(accessToken) ?? '';
  }

  Future<bool> saveUserDetails(UserModel? user) async {
    final pref = await SharedPreferences.getInstance();
    if (user == null) {
      return pref.remove(userInfo);
    }
    return pref.setString(userInfo, user.toJson().toString());
  }

  Future<String> getUserDetails() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(userInfo) ?? '';
  }

  Future<bool> saveLoginTime(int time) async {
    final pref = await SharedPreferences.getInstance();
    return pref.setInt(loginTime, time);
  }

  Future<int> getLoginTime() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getInt(loginTime) ?? 0;
  }

  Future<bool> saveUserid(String userId) async {
    final pref = await SharedPreferences.getInstance();
    return pref.setString(userId, userId);
  }

  Future<String> getUserId() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(userId) ?? '0';
  }

  Future<bool> saveExpirationDuration(int duration) async {
    final pref = await SharedPreferences.getInstance();
    return pref.setInt(expirationDuration, duration);
  }

  Future<int> getExpirationDuration() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getInt(expirationDuration) ?? 0;
  }

  Future<bool> hasTokenExpired() async {
    final loginTime = await getLoginTime();
    final expDuration = await getExpirationDuration();
    return DateTime.now().millisecondsSinceEpoch - loginTime > expDuration;
  }

  Future<void> clearAllData() async {
    await saveToken(null);
    await saveLoginTime(0);
    await saveUserDetails(null);
    await saveExpirationDuration(0);
  }
}
