import 'package:flutter/material.dart';
import 'package:denemeodev/model/kategori.dart';
import 'package:denemeodev/model/option.dart';
import 'package:denemeodev/model/sorular.dart';
import 'package:denemeodev/widget/ayarlar_widgetleri.dart';

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
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Text(
              question.text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 8),
            Text(
              'Lütfen bir seçeneğe dokununuz',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
            ),
            SizedBox(height: 10),
            Expanded(
              child: OptionsWidget(
                question: question,
                onClickedOption: onClickedOption,
              ),
            ),
          ],
        ),
      );
}
