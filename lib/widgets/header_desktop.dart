import 'package:flutter/material.dart';
import 'package:my_protfolio/widgets/site_logo.dart';

import '../constans/colors.dart';
import '../constans/nav_items.dart';
import '../styles/headerstyle.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap});
  final Function(int) onNavMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      width: double.maxFinite,
      //color: Colors.blueGrey,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                  onPressed: () {
                    onNavMenuTap(i);
                  },
                  child: Text(
                    navTitles[i],
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.whitePrimary),
                  )),
            ),
        ],
      ),
    );
  }
}
