import 'package:flutter/material.dart';
import 'package:denemeodev/model/kategori.dart';
import 'package:denemeodev/model/option.dart';
import 'package:denemeodev/model/sorular.dart';
import 'package:denemeodev/widget/ayarlar_widgetleri.dart';
//soru şıklarının widgetleri
class QuestionsWidget extends StatelessWidget {
  final Category category;
  final PageController controller;
  final ValueChanged<int> onChangedPage;
  final ValueChanged<Option> onClickedOption;

  const QuestionsWidget({
    Key key,
    @required this.category,
    @required this.controller,
    @required this.onChangedPage,
    @required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PageView.builder(
    onPageChanged: onChangedPage,
    controller: controller,
    itemCount: category.questions.length,
    itemBuilder: (context, index) {
      final question = category.questions[index];

      return buildQuestion(question: question);
    },
  );

  Widget buildQuestion({
    @required Question question,
  }) =>
      Container(
        padding: const EdgeInsets.all(1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 2),
            Text(
              question.text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 5),
            Expanded(
              child: OptionsWidget(
                soru: question,
                onClickedOption: onClickedOption,
              ),
            ),
          ],
        ),
      );
}
