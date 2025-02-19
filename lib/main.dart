import 'package:flutter/material.dart';
import 'package:flutter_aog/widgets/input.widget.dart';
import 'package:flutter_aog/widgets/logo.widget.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        //useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _gasCtrl = MoneyMaskedTextController();
  final _alcCtrl = MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Input(
            label: "Gasolina",
            ctrl: _gasCtrl,
          ),
          Input(
            label: "Álcool",
            ctrl: _alcCtrl,
          ),
          Container(
            margin: EdgeInsets.all(30),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(
                0.8,
              ),
              borderRadius: BorderRadius.circular(
                60,
              ),
            ),
            child: TextButton(
              child: Text(
                "CALCULAR",
              ),
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontFamily: "Big Shoulders Display",
                ),
              ),
              onPressed: () {
                print('Pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}
