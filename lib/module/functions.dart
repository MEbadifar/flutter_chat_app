import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> postRequest(
    {String? api, dynamic body, Map<String, String>? header}) async {
  if (header == null) header = {'Content-Type': 'aplication/json'};
  var res = await http.post(
    Uri.parse("https://codewitharman.herokuapp.com/$api"),
    headers: header,
    body: jsonEncode(body),
  );
  if (res.statusCode == 200) {
    return json.decode(utf8.decode(res.bodyBytes));
  }
  if (res.statusCode == 404) {
    throw Exception('server not found');
  }
  throw Exception(json.decode(utf8.decode(res.bodyBytes))['Message']);
}
