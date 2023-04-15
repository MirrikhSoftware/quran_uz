class Verse {
  Verse({
    int? id,
    int? juzNo,
    int? suraId,
    int? verseId,
    String? plain,
    String? arabic,
    String? meaning,
  }) {
    _id = id;
    _juzNo = juzNo;
    _suraId = suraId;
    _verseId = verseId;
    _plain = plain;
    _arabic = arabic;
    _meaning = meaning;
  }

  Verse.fromJson(dynamic json) {
    _id = json['id'];
    _juzNo = json['juz_no'];
    _suraId = json['sura_id'];
    _verseId = json['verse_id'];
    _plain = json['plain'];
    _arabic = json['arabic'];
    _meaning = json['meaning'];
  }

  int? _id;
  int? _juzNo;
  int? _suraId;
  int? _verseId;
  String? _plain;
  String? _arabic;
  String? _meaning;

  Verse copyWith({
    int? id,
    int? juzNo,
    int? suraId,
    int? verseId,
    String? plain,
    String? arabic,
    String? meaning,
  }) =>
      Verse(
        id: id ?? _id,
        juzNo: juzNo ?? _juzNo,
        suraId: suraId ?? _suraId,
        verseId: verseId ?? _verseId,
        plain: plain ?? _plain,
        arabic: arabic ?? _arabic,
        meaning: meaning ?? _meaning,
      );

  int get id => _id ?? 0;

  int get juzNo => _juzNo ?? 0;

  int get suraId => _suraId ?? 0;

  int get verseId => _verseId ?? 0;

  String get plain => _plain ?? "";

  String get arabic => _arabic ?? "";

  String get meaning => _meaning ?? "";

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['juz_no'] = _juzNo;
    map['sura_id'] = _suraId;
    map['verse_id'] = _verseId;
    map['plain'] = _plain;
    map['arabic'] = _arabic;
    map['meaning'] = _meaning;
    return map;
  }
}
