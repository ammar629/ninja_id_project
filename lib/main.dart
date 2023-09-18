import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        backgroundColor: Colors.grey[850],
        elevation: 0,
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(children: <Widget>[
          SimpleTextWidgetUtil(
            'NAME',
             Colors.grey, 2.0,
              null,
               FontWeight.normal
               ),

          SimpleTextWidgetUtil('Shinobi',Colors.amberAccent,2.0,28.0,FontWeight.bold),
        ]),
      ),
    );
  }
}

class SimpleTextWidgetUtil extends StatelessWidget {
  final String name;
  final Color textColor;
  final double textLetterSpacing;
  final double? textFontSize;
  final FontWeight textFontWeight;

  const SimpleTextWidgetUtil(this.name, this.textColor, this.textLetterSpacing,
      this.textFontSize, this.textFontWeight,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        color: textColor,
        letterSpacing: textLetterSpacing,
        fontSize: textFontSize ?? 14,
        fontWeight: textFontWeight,
      ),
    );
  }
}
