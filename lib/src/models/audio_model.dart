/*

  Created by: Bakhromjon Polat
  Created on: Apr 16 2023 04:43:42
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:equatable/equatable.dart';
import 'dart:convert';

class AudioModel extends Equatable {
  final String _low;
  final String _medium;
  final String _lowSecondary;
  final String _mediumSecondary;

  AudioModel({
    required String low,
    required String medium,
    required String lowSecondary,
    required String mediumSecondary,
  })  : _low = low,
        _medium = medium,
        _lowSecondary = lowSecondary,
        _mediumSecondary = mediumSecondary;

  String get low => _low;
  String get medium => _medium;
  String get lowSecondary => _lowSecondary;
  String get mediumSecondary => _mediumSecondary;

  AudioModel copyWith({
    String? low,
    String? medium,
    String? lowSecondary,
    String? mediumSecondary,
  }) {
    return AudioModel(
      low: low ?? _low,
      medium: medium ?? _medium,
      lowSecondary: lowSecondary ?? _lowSecondary,
      mediumSecondary: mediumSecondary ?? _mediumSecondary,
    );
  }

  @override
  List<Object?> get props => [_low, _lowSecondary, _medium, _mediumSecondary];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'low': _low,
      'medium': _medium,
      'low_secondary': _lowSecondary,
      'medium_Secondary': _mediumSecondary,
    };
  }

  factory AudioModel.fromMap(Map<String, dynamic> map) {
    return AudioModel(
      low: (map['low'] as String?) ?? "",
      medium: (map['medium'] as String?) ?? "",
      lowSecondary: (map['low_secondary'] as String?) ?? "",
      mediumSecondary: (map['medium_secondary'] as String?) ?? "",
    );
  }

  String toJson() => json.encode(toMap());

  factory AudioModel.fromJson(String source) =>
      AudioModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
