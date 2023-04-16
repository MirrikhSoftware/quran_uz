import 'package:quran_uz/src/data/juz_data.dart';
import 'package:quran_uz/src/data/sura_list.dart';
import 'package:quran_uz/src/models/juz_model.dart';
import 'package:quran_uz/src/models/sura_model.dart';
import 'package:quran_uz/src/data/verses.dart';

import 'models/verse_model.dart';

class QuranUz {
  /// A getter function. It returns a list of Sura objects.
  List<Sura> get suraList => suraMapList.map((x) => Sura.fromJson(x)).toList();

  /// A getter function. It returns a list of Verse objects.
  List<Verse> get verseList => verses.map((e) => Verse.fromJson(e)).toList();

  List<JuzModel> juzList = juz.map((e) => JuzModel.fromJson(e)).toList();

  /// It returns the Sura object with the given id.
  ///
  /// Args:
  ///   id (int): Sura ID
  ///
  /// Returns:
  ///   A list of Sura objects.
  Sura getSuraById(int id) {
    if (id > 0 && id <= 114) return suraList[id - 1];
    throw Exception('ID 1 va 114 orasida bo\'lishi kerak');
  }

  /// > It returns a list of verses where the suraId of the verse is equal to the suraId passed to the
  /// function
  ///
  /// Args:
  ///   suraId (int): The id of the sura.
  List<Verse> getVerseListBySuraId(int suraId) =>
      verseList.where((verse) => verse.suraId == suraId).toList();

  List<Verse> getVerseListByJuzNo(int juzNo) =>
      verseList.where((verse) => verse.juzNo == juzNo).toList();
}
