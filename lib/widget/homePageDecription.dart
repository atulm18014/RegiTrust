import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:land_registration/constant/constants.dart';
import 'package:universal_html/html.dart' as html;
import '../constant/utils.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LeftDescription extends StatelessWidget {
  const LeftDescription({Key? key}) : super(key: key);
  static final appContainer = kIsWeb
      ? html.window.document.querySelectorAll('flt-glass-pane')[0]
      : null;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // title
        const FittedBox(
          child: Text('''RegiTrust''',
              style: TextStyle(
                fontFamily: 'Raleway',
                color: Color.fromARGB(255, 32, 46, 75),
                fontSize: 100,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
                //letterSpacing: 1.5,
              )),
        ),
        SizedBox(
  width: 500.0,
  child: DefaultTextStyle(
    style: const TextStyle(
      fontSize: 45.0,
      fontFamily: 'Agne',
    ),
    child: AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText('Safe.Fast.Reliable',  speed: const Duration(milliseconds: 100)),
        TypewriterAnimatedText('BlockChain',  speed: const Duration(milliseconds: 200)),
        TypewriterAnimatedText('Polygon',  speed: const Duration(milliseconds: 200)),

      ],
       repeatForever: true, 
      onTap: () {
        print("Tap Event");
      },
    ),
),
),
        const FittedBox(
          child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0), // Adjust margin as needed
          child:
              Text('''A safe, simple and sound solution for land transaction. 
A Decentralized blockchain land registry app is a comprehensive 
platform designed to facilitate transparent and secure 
transactions related  to land ownership.''',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF0D0D0E),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,

                    //letterSpacing: 1.5,
                  )),
          ),
        ),
        
        // Description
        const SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            // button
            InkWell(
              onTap: () {},
              child: Container(
                  width: 150,
                  height: 57,
                  child: const Center(
                    child: Text("Learn More",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color.fromARGB(240, 255, 255, 255),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 2,
                        )),
                  ),
                  decoration: BoxDecoration(
                      color: const Color(0xF17A0C2D),
                      borderRadius: BorderRadius.circular(15))),
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        )
      ],
    );
  }
}
