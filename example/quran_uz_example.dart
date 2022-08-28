import 'package:quran_uz/quran_uz.dart';

void main(List<String> args) {
  QuranUz quranUz = QuranUz();
  Sura sura = quranUz.getSuraById(36);
  print(sura.toJson());
}

Stream<Verse> verses(int suraId) async* {
  final QuranUz quranUz = QuranUz();
  for (var v in quranUz.verses) {
    Verse verse = Verse.fromJson(v);
    if (verse.suraId == suraId) {
      yield verse;
    }
  }
}
