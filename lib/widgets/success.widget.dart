import 'package:flutter/material.dart';
import 'package:flutter_aog/widgets/loading-button.widget.dart';

// ignore: must_be_immutable
class Success extends StatelessWidget {
  var result = "";
  VoidCallback reset;

  Success({
    super.key,
    required this.result,
    required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(
          0.8,
        ),
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: "Big Shoulders Display",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          LoadingButton(
            busy: false,
            func: reset,
            invert: true,
            text: "CALCULAR NOVAMENTE",
          ),
        ],
      ),
    );
  }
}
