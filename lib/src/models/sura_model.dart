class Sura {
  Sura({
    int? id,
    bool? isMakki,
    String? meaningUz,
    String? nameAr,
    String? nameUz,
    int? versesCount,
    int? versesStart,
  }) {
    _id = id;
    _isMakki = isMakki;
    _meaningUz = meaningUz;
    _nameAr = nameAr;
    _nameUz = nameUz;
    _versesCount = versesCount;
    _versesStart = versesStart;
  }

  Sura.fromJson(dynamic json) {
    _id = json['id'];
    _isMakki = json['is_makki'];
    _meaningUz = json['meaning_uz'];
    _nameAr = json['name_ar'];
    _nameUz = json['name_uz'];
    _versesCount = json['verses_count'];
    _versesStart = json['verses_start'];
  }

  int? _id;
  bool? _isMakki;
  String? _meaningUz;
  String? _nameAr;
  String? _nameUz;
  int? _versesCount;
  int? _versesStart;

  Sura copyWith({
    int? id,
    bool? isMakki,
    String? meaningUz,
    String? nameAr,
    String? nameUz,
    int? versesCount,
    int? versesStart,
  }) =>
      Sura(
        id: id ?? _id,
        isMakki: isMakki ?? _isMakki,
        meaningUz: meaningUz ?? _meaningUz,
        nameAr: nameAr ?? _nameAr,
        nameUz: nameUz ?? _nameUz,
        versesCount: versesCount ?? _versesCount,
        versesStart: versesStart ?? _versesStart,
      );

  int get id => _id ?? 0;

  bool get isMakki => _isMakki ?? true;

  String get meaningUz => _meaningUz ?? "";

  String get nameAr => _nameAr ?? "";

  String get nameUz => _nameUz ?? "";

  int get versesCount => _versesCount ?? 0;

  int get versesStart => _versesStart ?? 0;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['is_makki'] = _isMakki;
    map['meaning_uz'] = _meaningUz;
    map['name_ar'] = _nameAr;
    map['name_uz'] = _nameUz;
    map['verses_count'] = _versesCount;
    map['verses_start'] = _versesStart;
    return map;
  }
}
