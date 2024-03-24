// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:my_protfolio/constans/size.dart';
import 'package:my_protfolio/constans/sns_link.dart';

import '../constans/colors.dart';
import 'custom_textfield.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          //title
          const Text(
            "Get in touch",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),

          //text filed
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= kMinDesktopWidth) {
                return buildnameEmailFieldDesktop();
              }
              return buildnameEmailFieldMobile();
            }),
          ),
          const SizedBox(
            height: 20,
          ),
          //message
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: CustomTextfield(
              hintText: "Your Message",
              maxLines: 15,
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          //Send Button
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          CustomColor.bgLight3),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Send',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
          ),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 300,
              ),
              child: const Divider()),

          //SNS icon buttons
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset(
                  'github.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.linkdn]);
                },
                child: Image.asset(
                  'linkdin.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.instagram]);
                },
                child: Image.asset(
                  'instagram.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.facebook]);
                },
                child: Image.asset(
                  'facebook.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.telegram]);
                },
                child: Image.asset(
                  'telegram.png',
                  width: 28,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row buildnameEmailFieldDesktop() {
    return const Row(
      children: [
        Flexible(
            child: CustomTextfield(
          hintText: "Your Name",
        )),
        SizedBox(
          width: 25,
        ),
        //email
        Flexible(
            child: CustomTextfield(
          hintText: "Your Email",
        )),
      ],
    );
  }

  Column buildnameEmailFieldMobile() {
    return const Column(
      children: [
        Flexible(
            child: CustomTextfield(
          hintText: "Your Name",
        )),
        SizedBox(
          height: 25,
        ),
        //email
        Flexible(
            child: CustomTextfield(
          hintText: "Your Email",
        )),
      ],
    );
  }
}
