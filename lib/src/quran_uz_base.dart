import 'package:quran_uz/src/sura_list.dart';
import 'package:quran_uz/src/sura_model.dart';
import 'package:quran_uz/src/verses.dart';

import 'verse_model.dart';

class QuranUz {
  List<Sura> get suraList => suraMapList.map((x) => Sura.fromJson(x)).toList();
  List<Verse> get verseList => verses.map((e) => Verse.fromJson(e)).toList();

  Sura getSuraById(int id) {
    if (id > 0 && id <= 114) return suraList[id - 1];
    throw Exception('ID 1 va 114 orasida bo\'lishi kerak');
  }
}
