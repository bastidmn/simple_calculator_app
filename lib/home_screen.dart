import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = const Color(0xFF00838e);
const Color primaryLightColor = const Color(0xFF4fb3be);
const Color primaryDarkColor = const Color(0xFF005661);
const Color secondaryColor = const Color(0xFFFFFFFF);
const Color accentColor = const Color(0xFFED5C55);
const Color primaryTextColor = const Color(0xFFFFFFFF);
const Color secondaryTextColor = const Color(0xFF000000);

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondaryColor,
        body: Column(
          children: [
            //CApp Bar
            Container(
              height: _height * 0.08,
              width: double.infinity,
              color: primaryColor,
              child: Padding(
                padding: EdgeInsets.all(_width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'The cooler Calculator',
                      style: GoogleFonts.raleway(
                        fontSize: _width * 0.06,
                        color: primaryTextColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Result + Calculation
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //1 2 3 4 *
                SizedBox(
                  width: double.infinity,
                  height: _width * 0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SmallCalculatorButton(primaryColor, '1'),
                      SmallCalculatorButton(primaryColor, '2'),
                      SmallCalculatorButton(primaryColor, '3'),
                      SmallCalculatorButton(primaryColor, '4'),
                      SmallCalculatorButton(primaryLightColor, '*'),
                    ],
                  ),
                ),
                //5 6 7 8 /
                SizedBox(
                  width: double.infinity,
                  height: _width * 0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SmallCalculatorButton(primaryColor, '5'),
                      SmallCalculatorButton(primaryColor, '6'),
                      SmallCalculatorButton(primaryColor, '7'),
                      SmallCalculatorButton(primaryColor, '8'),
                      SmallCalculatorButton(primaryLightColor, '/'),
                    ],
                  ),
                ),
                //9 0 A B +
                SizedBox(
                  width: double.infinity,
                  height: _width * 0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SmallCalculatorButton(primaryColor, '9'),
                      SmallCalculatorButton(primaryColor, '0'),
                      SmallCalculatorButton(primaryColor, 'A'),
                      SmallCalculatorButton(primaryColor, 'B'),
                      SmallCalculatorButton(primaryLightColor, '+'),
                    ],
                  ),
                ),
                //C D E F -
                SizedBox(
                  width: double.infinity,
                  height: _width * 0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SmallCalculatorButton(primaryColor, 'C'),
                      SmallCalculatorButton(primaryColor, 'D'),
                      SmallCalculatorButton(primaryColor, 'E'),
                      SmallCalculatorButton(primaryColor, 'F'),
                      SmallCalculatorButton(primaryLightColor, '-'),
                    ],
                  ),
                ),
                //AC, Back , Calc
                SizedBox(
                  width: double.infinity,
                  height: _width * 0.25,
                  child: Padding(
                    padding: EdgeInsets.only(top: _width * 0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MediumCalculatorButton(primaryLightColor, 'AC'),
                        MediumCalculatorButton(primaryLightColor, 'del'),
                        LargeCalculatorButton(primaryDarkColor, '='),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SmallCalculatorButton extends StatelessWidget {
  SmallCalculatorButton(this._buttonColor, this._buttonContent) {}

  final Color _buttonColor;
  final String _buttonContent;

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(_width * 0.005),
      child: Container(
        width: _width * 0.19,
        height: _width * 0.19,
        decoration: BoxDecoration(
          color: _buttonColor,
          borderRadius: BorderRadius.circular(_width * 0.025),
        ),
        child: Center(
          child: Text(
            _buttonContent,
            style: GoogleFonts.lilitaOne(
                fontSize: _width * 0.08, color: primaryTextColor),
          ),
        ),
      ),
    );
  }
}

class MediumCalculatorButton extends StatelessWidget {
  MediumCalculatorButton(this._buttonColor, this._buttonContent) {}

  final Color _buttonColor;
  final String _buttonContent;

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(_width * 0.01),
      child: Container(
        width: _width * 0.28,
        height: _width * 0.22,
        decoration: BoxDecoration(
          color: _buttonColor,
          borderRadius: BorderRadius.circular(_width * 0.03),
        ),
        child: Center(
          child: Text(
            _buttonContent,
            style: GoogleFonts.lilitaOne(
                fontSize: _width * 0.08, color: primaryTextColor),
          ),
        ),
      ),
    );
  }
}

class LargeCalculatorButton extends StatelessWidget {
  LargeCalculatorButton(this._buttonColor, this._buttonContent) {}

  final Color _buttonColor;
  final String _buttonContent;

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(_width * 0.01),
      child: Container(
        width: _width * 0.38,
        height: _width * 0.22,
        decoration: BoxDecoration(
          color: _buttonColor,
          borderRadius: BorderRadius.circular(_width * 0.03),
        ),
        child: Center(
          child: Text(
            _buttonContent,
            style: GoogleFonts.lilitaOne(
              fontSize: _width * 0.08,
              color: primaryTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
