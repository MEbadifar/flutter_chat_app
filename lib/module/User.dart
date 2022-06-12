import 'package:flutter_chat_app/module/functions.dart';

class User {
  late int _id;
  String? _name;
  String? _family;
  String? _mobile;
  String? _token;

  User({
    required int id,
    String? name,
    String? family,
    String? mobile,
    required String? token,
  }) {
    _id = id;
    _name = name;
    _family = family;
    _mobile = mobile;
    _token = token;
  }
  static Future<User> authenticate(String username, String password) async {
    Map<String, dynamic> _res = await postRequest(
        api: 'Authenticate', body: {'mobile': username, 'password': password});
    return User(
        id: _res['id'],
        name: _res['name'],
        family: _res['family'],
        mobile: _res['mobile'],
        token: _res['token']);
  }

  int get id => this._id;
  String get token => token;
  String get name => this.name;
  String get family => this.family;
  String get mobile => this.mobile;
}
