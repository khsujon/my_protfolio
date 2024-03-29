import 'package:flutter/material.dart';
import 'package:my_protfolio/constans/colors.dart';
import 'package:my_protfolio/constans/size.dart';
import 'package:my_protfolio/widgets/footer.dart';
import 'package:my_protfolio/widgets/main_mobile.dart';

import '../widgets/contact_section.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/project_section.dart';
import '../widgets/skills_desktop.dart';
import '../widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    //call function
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          backgroundColor: CustomColor.scaffoldBg,
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys.first),
                //Main
                if (constraints.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(
                    onNavMenuTap: (int navIndex) {
                      scrollToSection(navIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                if (constraints.maxWidth >= kMinDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),

                //Skils
                Container(
                  key: navbarKeys[1],
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: CustomColor.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //title
                      const Text(
                        "What I can do?",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary),
                      ),

                      const SizedBox(
                        height: 50.0,
                      ),

                      //platforms and skills
                      if (constraints.maxWidth >= kMedDesktopWidth)
                        const skillDesktop()
                      else
                        const skillMobile()
                    ],
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),

                //Projects
                ProjectSection(
                  key: navbarKeys[2],
                ),

                const SizedBox(
                  height: 50,
                ),

                //Contact
                ContactSection(
                  key: navbarKeys[3],
                ),

                const SizedBox(
                  height: 30,
                ),

                //Footer
                Footer(),
              ],
            ),
          ));
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(microseconds: 500), curve: Curves.easeInOut);
  }
}
