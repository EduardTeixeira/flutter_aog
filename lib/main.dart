import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Row(
            children: <Widget>[
              Container(
                width: 100,
                alignment: Alignment.centerRight,
                child: Text(
                  "Gasolina",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: "Big Shoulders Display",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextFormField(
                  controller: _gasCtrl,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontFamily: "Big Shoulders Display",
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
