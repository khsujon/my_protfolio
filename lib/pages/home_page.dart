import 'package:flutter/material.dart';
import 'package:my_protfolio/constans/colors.dart';
import 'package:my_protfolio/constans/nav_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.scaffoldBg,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //Main
            Container(
              height: 60,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              width: double.maxFinite,
              //color: Colors.blueGrey,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.transparent, CustomColor.bgLight3]),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                children: [
                  Text(
                    "KH",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        decoration: TextDecoration.underline,
                        color: CustomColor.yellowSecondary),
                  ),
                  Spacer(),
                  for (int i = 0; i < navTitles.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            navTitles[i],
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: CustomColor.whitePrimary),
                          )),
                    ),
                ],
              ),
            ),
            //Skils
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),

            //Projects
            Container(
              height: 500,
              width: double.maxFinite,
              //color: Colors.blueGrey,
            ),

            //Contact
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),

            //Footer
            Container(
              height: 500,
              width: double.maxFinite,
              //color: Colors.blueGrey,
            ),
          ],
        ));
  }
}
