class User {
  late int _id;
  String? _name;
  String? _family;
  String? _mobile;

  User({
    required int id,
    String? name,
    String? family,
    String? mobile,
  }) {
    _id = id;
    _name = name;
    _family = family;
    _mobile = mobile;
  }
  static Future<User> authenticate(String username, String password) async {
    return Future.delayed(Duration(seconds: 2), () {
      return User(id: 1, name: 'Ali', family: 'Ebadi', mobile: '123');
    });
  }
}
