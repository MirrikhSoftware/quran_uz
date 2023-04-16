import 'package:quran_uz/quran_uz.dart';

void main(List<String> args) {
  /// Creating an instance of the QuranUz class.
  QuranUz quranUz = QuranUz();

  /// Getting the Sura object by its id.
  Sura sura = quranUz.getSuraById(36);
  // print(sura.toJson());

  /// Getting the verses of the sura by its id.
  List<Verse> verses = quranUz.getVerseListBySuraId(sura.id);
  print(verses.length);
}
