import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:alouga/widgets/input.widget.dart';
import 'package:alouga/widgets/loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  final MoneyMaskedTextController alcCtrl;
  final MoneyMaskedTextController gasCtrl;
  final bool busy;
  final Function submitFunc;

  const SubmitForm({
    Key? key,
    required this.alcCtrl,
    required this.gasCtrl,
    required this.busy,
    required this.submitFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Input(
            ctrl: alcCtrl,
            label: "Álcool",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Input(
            ctrl: gasCtrl,
            label: "Gasolina",
          ),
        ),
        LoadButton(
          busy: busy,
          invert: false,
          function: submitFunc,
          text: "CALCULAR",
        ),
      ],
    );
  }
}
