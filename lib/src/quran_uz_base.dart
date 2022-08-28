import 'package:quran_uz/src/sura_model.dart';

import 'verse_model.dart';

part 'sura_list.dart';
part 'verses.dart';

class QuranUz {
  List<Sura> get suraList => _suraList.map((x) => Sura.fromJson(x)).toList();
  List<Verse> get verses => _verses.map((e) => Verse.fromJson(e)).toList();

  Sura getSuraById(int id) {
    if (id > 0 && id <= 114) return Sura.fromJson(suraList[id - 1]);
    throw Exception('ID 1 va 114 orasida bo\'lishi kerak');
  }
}
