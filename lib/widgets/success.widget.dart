import 'package:alouga/widgets/loading-button.widget.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  final String result;
  final Function reset;

  const Success({
    Key? key,
    required this.result,
    required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.75),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 25,
          ),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 50,
              fontFamily: "Big Shoulders Display",
            ),
            textAlign: TextAlign.center,
          ),
          LoadButton(
              busy: false,
              invert: true,
              function: reset,
              text: "CALCULAR NOVAMENTE"),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
