import 'package:flutter/material.dart';
import 'package:denemeodev/model/option.dart';
import 'package:denemeodev/model/sorular.dart';
import 'package:denemeodev/utils.dart';
//cevap şıkları
class OptionsWidget extends StatelessWidget {
  final Question soru;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget({
    Key key,
    @required this.soru,
    @required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
    children: Utils.heightBetween(
      soru.options
          .map((option) => buildOption(context, option))
          .toList(),
      height: 8,
    ),
  );

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, soru);

    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            buildAnswer(option),
            buildSolution(soru.selectedOption, option),
          ],
        ),
      ),
    );
  }

  Widget buildAnswer(Option option) => Container(
    height: 50,
    child: Row(children: [
      Text(
        option.code,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      SizedBox(width: 12),
      Text(
        option.text,
        style: TextStyle(fontSize: 20),
      )
    ]),
  );

  Widget buildSolution(Option solution, Option answer) {
    if (solution == answer) {
      return Text(
        soru.solution,
        style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
      );
    } else {
      return Container();
    }
  }

  Color getColorForOption(Option option, Question question) {  //eğer soru doğru cevaplanırsa yeşil yanmalı yanlış cevaplanırsa kırmızı yanmalı
    final isSelected = option == question.selectedOption;

    if (!isSelected) {

    } else {
      return option.isCorrect ? Colors.green : Colors.red; //cevaplanan sorunun doğru olunca hangi renk, yanlış olunca hangi renk yanacağını gösteriyor
    }
  }
}
