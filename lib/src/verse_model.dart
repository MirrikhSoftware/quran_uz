import 'dart:convert';

VerseModel verseModelFromJson(String str) =>
    VerseModel.fromJson(json.decode(str));

String verseModelToJson(VerseModel data) => json.encode(data.toJson());

class VerseModel {
  VerseModel({
    int? id,
    int? paraNo,
    int? suraId,
    int? verseId,
    String? plain,
    String? arabic,
    String? meaning,
  }) {
    _id = id;
    _paraNo = paraNo;
    _suraId = suraId;
    _verseId = verseId;
    _plain = plain;
    _arabic = arabic;
    _meaning = meaning;
  }

  VerseModel.fromJson(dynamic json) {
    _id = json['id'];
    _paraNo = json['para_no'];
    _suraId = json['sura_id'];
    _verseId = json['verse_id'];
    _plain = json['plain'];
    _arabic = json['arabic'];
    _meaning = json['meaning'];
  }

  int? _id;
  int? _paraNo;
  int? _suraId;
  int? _verseId;
  String? _plain;
  String? _arabic;
  String? _meaning;

  VerseModel copyWith({
    int? id,
    int? paraNo,
    int? suraId,
    int? verseId,
    String? plain,
    String? arabic,
    String? meaning,
  }) =>
      VerseModel(
        id: id ?? _id,
        paraNo: paraNo ?? _paraNo,
        suraId: suraId ?? _suraId,
        verseId: verseId ?? _verseId,
        plain: plain ?? _plain,
        arabic: arabic ?? _arabic,
        meaning: meaning ?? _meaning,
      );

  int? get id => _id;

  int? get paraNo => _paraNo;

  int? get suraId => _suraId;

  int? get verseId => _verseId;

  String? get plain => _plain;

  String? get arabic => _arabic;

  String? get meaning => _meaning;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['para_no'] = _paraNo;
    map['sura_id'] = _suraId;
    map['verse_id'] = _verseId;
    map['plain'] = _plain;
    map['arabic'] = _arabic;
    map['meaning'] = _meaning;
    return map;
  }
}
