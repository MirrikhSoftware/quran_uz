import 'package:quran_uz/quran_uz.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final quran = QuranUz();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(quran.suraList, '');
    });
  });
}
