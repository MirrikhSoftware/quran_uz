import 'package:quran_uz/quran_uz.dart';

void main(List<String> args) {
  /// Creating an instance of the QuranUz class.
  QuranUz quranUz = QuranUz();

  /// Printing all the sura list in the Quran al-Karim.
  for (var sura in quranUz.suraList) {
    print('Sura no: ${sura.id}');
    print('Place: ${sura.isMakki ? "Makka" : "Madina"}');
    print('Arabic name: ${sura.nameAr}');
    print('Uzbek name: ${sura.nameUz}');
  }

  /// Printing all the verses in the Quran al-Karim.
  for (var verse in quranUz.verseList) {
    print('verse no: ${verse.verseId}');
    print('verse arabic text: ${verse.arabic}');
    print('verse meaning text: ${verse.meaning}');
  }

  /// Getting the Sura object by its id.
  Sura sura = quranUz.getSuraById(36);
  print(sura.toJson());

  /// Getting the verses of the sura by its id.
  List<Verse> verses = quranUz.getVerseListBySuraId(sura.id);
  print(verses.length);
}
