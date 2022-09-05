import 'dart:convert';

import 'package:artofflutter_two/ImageSearchApp/models/availabledogs.dart';
import 'package:artofflutter_two/ImageSearchApp/models/image_model.dart';
import 'package:http/http.dart' as http;

class API {
  Future<Map<String, dynamic>?> getData(String uri) async {
    final http.Response a = await http.get(Uri.parse(uri));
    if (a.body == null) return null;
    return jsonDecode(a.body); // Map
  }
}

class Api_Services extends API {
  //asign instance of getDogList into available
  AvailableDogs? available; 
  Api_Services._() {
    getDogList().then((value) {
      if (value != null) {
        available = value;
      }
    });
  }

  //making single instance of API_service
  static Api_Services? _instance;

  static Api_Services instance() {
    _instance ??= Api_Services._();
    return _instance!;
  }

  Future<AvailableDogs?> getDogList() async {
    final result = await getData('https://dog.ceo/api/breeds/list/all');
    if (result == null) return null;
    return AvailableDogs.fromJSON(result);
  }

  Future<ImageModel?> getDog(String uri) async {
    final _singleDog =
        await getData('https://dog.ceo/api/breeds/$uri/image/random');
    if (_singleDog == null) return null;
    return ImageModel.fromJSON(_singleDog);
  }
}
