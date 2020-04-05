import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'item_content.dart';

const CRIMSON_RED = 0xFFEB1555;
const DARK_PURPLE = 0xFF1D1E33;
const DARKER_PURPLE = 0xFF111328;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI Kalkulator'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: Color(DARK_PURPLE),
                      cardChild: ItemSelect(
                        icon: FontAwesomeIcons.mars,
                        label: 'MANN',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: Color(DARK_PURPLE),
                      cardChild: ItemSelect(
                        icon: FontAwesomeIcons.venus,
                        label: 'KVINNE',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: Color(DARK_PURPLE),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: Color(DARK_PURPLE),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: Color(DARK_PURPLE),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Color(CRIMSON_RED),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            )
          ],
        ));
  }
}
