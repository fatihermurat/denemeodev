import '../model/option.dart';
import '../model/sorular.dart';

final sorular = [
  Question(
    text: 'Türk hanlarının yaşadığı çerge olarak da bilinen büyük ve süslü çadırın adı nedir?',
    options: [
      Option(code: 'A', text: 'Kümbet', isCorrect: false),
      Option(code: 'B', text: 'Otağ', isCorrect: true),
      Option(code: 'C', text: 'Çadır', isCorrect: false),
      Option(code: 'D', text: 'Baraka', isCorrect: false),
    ],
    solution: 'Süslü Cadırın İsmi Otağdır',
  ),
  Question(
    text: 'Yazları sıcak ve kurak; kışları ise soğuk ve karlı geçen bir bölgede aşağıdaki iklimlerden hangisi görülür?',
    options: [
      Option(code: 'A', text: 'Tropikal İklim', isCorrect: false),
      Option(code: 'B', text: 'Ekvatoral İklim', isCorrect: false),
      Option(code: 'C', text: 'Muson İklimi', isCorrect: false),
      Option(code: 'D', text: 'Karasal İklim', isCorrect: true),
    ],
    solution: 'Karasal İklim Doğru Cevaptır',
  ),
  Question(
    text: 'Hangisi sürüngen hayvan değildir?',
    options: [
      Option(code: 'A', text: 'Kaplumbağa', isCorrect: true),
      Option(code: 'B', text: 'Bukalemun', isCorrect: false),
      Option(code: 'C', text: 'Yılan', isCorrect: false),
      Option(code: 'D', text: 'Kertenkele', isCorrect: false),
    ],
    solution: 'Doğru cevap Kaplumbağadır',
  ),
  Question(
    text:
    'Türkiye yi ağaçlandırmak ve erozyonla mücadele etmek olan kurulan Sivil Toplum Kuruluşu aşağıdakilerden hangisidir?',
    options: [
      Option(code: 'A', text: 'Tema', isCorrect: true),
      Option(code: 'B', text: 'Tev', isCorrect: false),
      Option(code: 'C', text: "Yeşilay", isCorrect: false),
      Option(code: 'D', text: "Kızılay", isCorrect: false),
    ],
    solution: 'Doğru cevap Tema vakfıdır',
  ),
  Question(
    text: 'Keçinin erkeğine ne ad verilir?',
    options: [
      Option(code: 'A', text: 'Oğlak', isCorrect: false),
      Option(code: 'B', text: 'Taka', isCorrect: false),
      Option(code: 'C', text: 'Teke', isCorrect: true),
      Option(code: 'D', text: 'Sıpa', isCorrect: false),
    ],
    solution: 'Oğlak Doğru Cevaptır',
  ),
  Question(
    text: 'Aşağıdakilerden hangisi doğal ışık kaynağı değildir ?',
    options: [
      Option(code: 'A', text: 'Mum', isCorrect: true),
      Option(code: 'B', text: 'Güneş', isCorrect: false),
      Option(code: 'C', text: 'Ateş Böceği', isCorrect: false),
      Option(code: 'D', text: 'Ay', isCorrect: false),
    ],
    solution: 'Mum doğal ışık kaynağı değildir.',
  ),
  Question(
    text: 'Türkiye’ de kaç tane coğrafi bölge bulunmaktadır?',
    options: [
      Option(code: 'A', text: '4', isCorrect: false),
      Option(code: 'B', text: '5', isCorrect: false),
      Option(code: 'C', text: '6', isCorrect: false),
      Option(code: 'D', text: '7', isCorrect: true),
    ],
    solution: 'Türkiye 7 coğrafi bölgeye ayrılmaktadır.',
  ),
];
