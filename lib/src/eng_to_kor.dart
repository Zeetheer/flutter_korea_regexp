import 'package:korea_regexp/src/constant.dart';
import 'package:korea_regexp/src/implode.dart';

final enToKr = { for (var e in keys) e.last : e.first };

///English typing -> Korean typing
///영티 -> 한타

/// 'dkssud' -> '안녕'
String engToKor(String eng) {
  final kor = eng.split('').map((char) => enToKr[char] ?? char).join();
  return implode(kor);
}
