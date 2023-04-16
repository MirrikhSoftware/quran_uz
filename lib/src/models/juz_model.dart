/*

  Created by: Bakhromjon Polat
  Created on: Apr 16 2023 05:50:53
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
class JuzModel {
  int? _index;
  JuzData? _start;
  JuzData? _end;

  JuzModel({int? index, JuzData? start, JuzData? end}) {
    if (index != null) {
      _index = index;
    }
    if (start != null) {
      _start = start;
    }
    if (end != null) {
      _end = end;
    }
  }

  int? get index => _index;
  JuzData? get start => _start;
  JuzData? get end => _end;

  JuzModel.fromJson(Map<String, dynamic> json) {
    _index = json['index'];
    _start = json['start'] != null ? JuzData.fromJson(json['start']) : null;
    _end = json['end'] != null ? JuzData.fromJson(json['end']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['index'] = _index;
    data['start'] = _start?.toJson();
    data['end'] = _end?.toJson();

    return data;
  }
}

class JuzData {
  int? _index;
  int? _verse;
  String? _name;

  JuzData({
    int? index,
    int? verse,
    String? name,
  }) {
    if (index != null) {
      _index = index;
    }
    if (verse != null) {
      _verse = verse;
    }
    if (name != null) {
      _name = name;
    }
  }

  int? get index => _index;
  int? get verse => _verse;
  String? get name => _name;

  JuzData.fromJson(Map<String, dynamic> json) {
    _index = json['index'];
    _verse = json['verse'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['index'] = _index;
    data['verse'] = _verse;
    data['name'] = _name;
    return data;
  }
}
