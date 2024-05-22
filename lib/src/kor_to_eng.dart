import 'package:korea_regexp/src/constant.dart';
import 'package:korea_regexp/src/explode.dart';

Map<String, String> KR_TO_EN =
    Map.fromIterables(keys.map((e) => e[0]), keys.map((e) => e[1]));

///힌타 -> 영타

/// '안녕' -> 'dkssud'
korToEng(String text) {
  return text
      .split('')
      .map((char) =>
          (explode(char, grouped: false)).map((String e) => KR_TO_EN[e] ?? e))
      .expand((element) => element)
      .toList()
      .join('');
}
