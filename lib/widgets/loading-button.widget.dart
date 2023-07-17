import 'package:flutter/material.dart';

class LoadButton extends StatelessWidget {
  final bool busy;
  final bool invert;
  final Function function;
  final String text;

  const LoadButton({
    Key? key,
    required this.busy,
    required this.invert,
    required this.function,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child:
                const CircularProgressIndicator(backgroundColor: Colors.white),
          )
        : Container(
            alignment: Alignment.center,
            child: FloatingActionButton.extended(
              onPressed: function as void Function(),
              backgroundColor: invert
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).secondaryHeaderColor,
              label: Text(
                text,
                style: TextStyle(
                  color: invert
                      ? Theme.of(context).secondaryHeaderColor
                      : Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontFamily: "Big Shoulders Display",
                ),
              ),
              icon: invert
                  ? const Icon(
                      Icons.calculate,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.calculate,
                      color: Colors.purple,
                    ),
            ),
          );
  }
}
