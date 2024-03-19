import 'package:flutter/cupertino.dart';
import 'package:my_protfolio/widgets/project_card.dart';

import '../constans/colors.dart';
import '../utils/project_utils.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          //workprojects Title
          const Text(
            "Work Projects",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 50.0,
          ),

          //workProjects cards
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),
            child: Wrap(
              spacing: 25.0,
              runSpacing: 25.0,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  projectCardWidget(
                    project: workProjectUtils[i],
                  ),
              ],
            ),
          ),

          const SizedBox(
            height: 80.0,
          ),
          //hobbyprojects Title
          const Text(
            "Hobby Projects",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 50.0,
          ),

          //hobbyProjects cards
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),
            child: Wrap(
              spacing: 25.0,
              runSpacing: 25.0,
              children: [
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  projectCardWidget(
                    project: hobbyProjectUtils[i],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
