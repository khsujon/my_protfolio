import 'package:flutter/material.dart';

import '../constans/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 760.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //avtr img
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.5),
                CustomColor.scaffoldBg.withOpacity(0.5),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/myimg3.png",
              width: screenWidth,
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          const Text(
            "Hi,\nI'm Kamrul Hasan\nA Flutter Developer & Programmer",
            style: TextStyle(
              fontSize: 24.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 190,
            height: 40,
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
    );
  }
}
