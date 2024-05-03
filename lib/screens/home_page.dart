import 'package:flutter/material.dart';
import 'package:land_registration/widget/header.dart';
import 'package:land_registration/widget/homePageDecription.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant/utils.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    if (width > 600) {
      width = 590;
      isDesktop = true;
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Top Header
            const Material(
              color:  Color.fromARGB(255, 128, 124, 190),
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 150.0, top: 15, right: 50, bottom: 15),
                child: HeaderWidget(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150.0, top: 0, right: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const LeftDescription(),
                  Center(
                    child: Container(
                      width: 600,
                      height: 734,
                      child: SvgPicture.asset(
                        'assets/background_svg.svg',
                        height: 20.0,
                        width: 20.0,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            
            
            Container(
                color:  Color.fromARGB(255, 128, 124, 190), // Background color
               padding: const EdgeInsets.all(20.0), // Add padding for the footer content
               child: const Row(
                 mainAxisAlignment: MainAxisAlignment.center, // Center the content horizontally
                 children: [
                  Text(
                        '© 2024 RegiTrust. All rights reserved.', // Your copyright text
        style: TextStyle(
          color: Colors.white, // Text color
          fontSize: 10.0,

        ),
      ),
    ],
  ),
),

          ],
        ),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
