import 'package:flutter/material.dart';

import '../constans/colors.dart';
import '../constans/skill_item.dart';

class skillMobile extends StatelessWidget {
  const skillMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500.0,
      ),
      child: Column(
        children: [
          for (int i = 0; i < platfromItems.length; i++)
            //platform
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                leading: Image.asset(
                  platfromItems[i]["img"],
                  width: 26.0,
                ),
                title: Text(platfromItems[i]["title"]),
              ),
            ),
          const SizedBox(
            height: 25,
          ),

          //skills
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Chip(
                  backgroundColor: CustomColor.bgLight2,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12, horizontal: 16.0),
                  label: Text(skillItems[i]["title"]),
                  avatar: Image.asset(skillItems[i]["img"]),
                )
            ],
          )
        ],
      ),
    );
  }
}
