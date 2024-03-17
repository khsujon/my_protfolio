import 'package:flutter/material.dart';

import '../constans/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenSize.height / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi,\nI'm Kamrul Hasan\nA Flutter Developer & Programmer",
                style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        CustomColor.bgLight3), // Change default button color
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return CustomColor.hover1
                              .withOpacity(0.9); // Hover color and opacity
                        } else {
                          return Colors
                              .transparent; // Return transparent when not hovered
                        }
                      },
                    ),
                  ),
                  child: Container(
                    width: 250,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      "Get in touch",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: CustomColor.whitePrimary),
                    ),
                  ),
                ),
              )
            ],
          ),
          Image.asset(
            "assets/myimg.jpg",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
