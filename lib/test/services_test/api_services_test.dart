import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Map<String,dynamic>> getdata_test(String URI_test) async {
  http.Response textx = await http.get(Uri.parse(URI_test));
  // if (textx == null) {
  //   return null;
  // }
  return jsonDecode(textx.body);
}

class API_services_test {
  Future<Map<String, dynamic>?> getDogImageUriTest() async {
    Map<String, dynamic> dogImage =
        await getdata_test("https://dog.ceo/api/breeds/image/random");
  }
}
