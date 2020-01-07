import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<dynamic> getTitle(String url) async {
  var response = await http.get(url);
  var jsonResponse = convert.jsonDecode(response.body);
  return (jsonResponse);
}
