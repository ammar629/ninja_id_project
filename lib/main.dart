import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/ninja.png'),
                ),
              ),

              const Divider(
                height: 60,
                color: Colors.white,
              ),
              
              const SimpleTextWidgetUtil(
                  'NAME', Colors.grey, 2.0, null, FontWeight.normal),
              const SizedBox(
                height: 10.0,
              ),

              const SimpleTextWidgetUtil(
                  'Shinobi', Colors.amberAccent, 2.0, 28.0, FontWeight.bold),
              const SizedBox(
                height: 30.0,
              ),

              const SimpleTextWidgetUtil('CURRENT NINJA LEVEL', Colors.grey, 2.0,
                  null, FontWeight.normal),
              const SizedBox(
                height: 10.0,
              ),
              SimpleTextWidgetUtil(
                  '$ninjaLevel', Colors.amberAccent, 2.0, 28.0, FontWeight.bold),

              const SizedBox(height: 30.0,),
              const Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),

                  SizedBox(width: 10.0,),

                  SimpleTextWidgetUtil(
                    'shinobi@gmail.com',
                    Colors.grey,
                    1.0,
                    18.0,
                    FontWeight.normal,
                  ),
                ],
              )
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
