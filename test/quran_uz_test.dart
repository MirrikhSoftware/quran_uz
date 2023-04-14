import 'package:test/test.dart';
import 'package:quran_uz/quran_uz.dart';

void main() {
  group('QuranUz', () {
    late QuranUz quranUz;

    setUp(() {
      quranUz = QuranUz();
    });

    test('getSuraById returns correct Sura object', () {
      final sura = quranUz.getSuraById(1);
      expect(sura.id, equals(1));
      expect(sura.nameUz, equals('Фотиҳа'));
    });

    test('getVerseListBySuraId returns correct list of Verse objects', () {
      final verses = quranUz.getVerseListBySuraId(1);
      expect(verses.length, equals(7));
      expect(
          verses[0].meaning,
          equals(
              'Меҳрибон ва раҳмли Аллоҳнинг номи билан бошлайман. (Аллоҳ таоло ўз китобини "бисмиллаҳ" билан бошлагани мусулмонларга ҳам ўрнак, улар ҳам доим ўз сўзларини ва ишларини "бисмиллаҳ" билан бошламоқлари лозим. Пайғамбар алайҳиссалом ҳадисларидан бирида: "Эътиборли ҳар бир иш "бисмиллаҳ" билан бошланмас экан, унинг охири кесикдир", деганлар. Яъни, баракаси бўлмайди, охирига етмайди.)'));
    });

    test('getVerseListByParaNo returns correct list of Verse objects', () {
      final verses = quranUz.getVerseListByParaNo(1);
      expect(verses.length, equals(148));
      expect(
          verses[0].meaning,
          equals(
              'Меҳрибон ва раҳмли Аллоҳнинг номи билан бошлайман. (Аллоҳ таоло ўз китобини "бисмиллаҳ" билан бошлагани мусулмонларга ҳам ўрнак, улар ҳам доим ўз сўзларини ва ишларини "бисмиллаҳ" билан бошламоқлари лозим. Пайғамбар алайҳиссалом ҳадисларидан бирида: "Эътиборли ҳар бир иш "бисмиллаҳ" билан бошланмас экан, унинг охири кесикдир", деганлар. Яъни, баракаси бўлмайди, охирига етмайди.)'));
    });

    test('getSuraById throws exception for invalid id', () {
      expect(() => quranUz.getSuraById(0), throwsException);
      expect(() => quranUz.getSuraById(115), throwsException);
    });
  });
}
