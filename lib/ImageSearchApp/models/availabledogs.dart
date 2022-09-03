import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AvailableDogs {
  List<String> dogNames = [];
  AvailableDogs._(this.dogNames);

  factory AvailableDogs.fromJSON(Map<String, dynamic> data) {
    final List<String> _datas = [];

    final message = data['message'] as Map;

    message.forEach((key, value) {
      _datas.add(key.toString());
    });

    return AvailableDogs._(_datas );
  }
}
