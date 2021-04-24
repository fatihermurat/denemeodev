import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Option {
  final String code;
  final String text;
  final bool isCorrect; //doğru ve yanlışlar

  const Option({
    @required this.text, //textler
    @required this.code,  //kodlar
    @required this.isCorrect,
  });
}
