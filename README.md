# Qur'oni karim

[![pub package](https://img.shields.io/pub/v/quran_uz.svg)](https://pub.dev/packages/quran_uz)
![version](https://img.shields.io/badge/version-1.2.3-blue)
![contributors](https://img.shields.io/github/contributors/MirrikhOpenSource/quran_uz)
![commits](https://img.shields.io/github/commit-activity/m/MirrikhOpenSource/quran_uz)

Assalomu alaykum va rahmatullohi va barokatuhu!

Ushbu paket yordamida Qur'oni karim ilovalar ishlab chiqarishingiz mumkin.
U quyidagilarni o'z ichiga olgan

### Suralar
* Suralar ro'yxati
* Sura nomi
* Suraning arabiy nomi
* Nozil bo'lgan joyi (Makkiy yoki Madaniy ekanligi)
* Oyatlar soni

### Oyatlar
* Oyatlarning arabiy matni 
* Oyatlarning arabiy matni (harakatsiz)
* Ma'nolar tarjimasi
* Sura raqami
* Pora raqami

## O'rnatish

Terminal orqali o'rnatish

Agar dart loyihaga o'rnatmoqchi bo'lsangiz quyidagi komandani terminalga yozing

```dart
dart pub add quran_uz
```

Flutter loyihada bo'lsa
```dart
flutter pub add quran_uz
```
## Foydalanish

import qiling

```dart
import 'package:quran_uz/quran_uz.dart';
```

QuranUz klassidan obyekt oling

```dart
QuranUz quranUz = QuranUz();
```
Suralar ro'yxati

```dart
for (var sura in quranUz.suraList) {
    print('Sura no: ${sura.id}');
    print('Place: ${sura.isMakki! ? "Makka" : "Madina"}');
    print('Arabic name: ${sura.nameAr}');
    print('Uzbek name: ${sura.nameUz}');
}
```

Barcha oyatlar ro'yxatini ko'rsatish

```dart
for (var verse in quranUz.verseList) {
    print('verse no: ${verse.verseId}');
    print('verse arabic text: ${verse.arabic}');
    print('verse meaning text: ${verse.meaning}');
}
```

Suraning raqami bo'yicha olish

```dart
Sura sura = quranUz.getSuraById(36);
```

Suraning oyatlarini olish
```dart
List<Verse> verses = quranUz.getVerseListBySuraId(sura.id!);
```

## Fikr mulohazalar uchun

Agar paketda biror xatoga yo'l qo'yilgan bo'lsa, darxol xabar berishingizni iltimos qilamiz. Xatolarni github'dagi [issues](https://github.com/MirrikhOpenSource/quran_uz/issues/new) bo'limida qoldiring. Agar paketga qandaydir qulaylik qo'shishni xohlasangiz github "request".




