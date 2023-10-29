import 'package:flutter/material.dart';
import 'package:moimoi/helper/utility.dart';
import 'package:moimoi/ui/page/settings/widgets/headerWidget.dart';
import 'package:moimoi/ui/page/settings/widgets/settingsRowWidget.dart';
import 'package:moimoi/ui/theme/theme.dart';
import 'package:moimoi/widgets/customAppBar.dart';
import 'package:moimoi/widgets/customWidgets.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TwitterColor.white,
      appBar: CustomAppBar(
        isBackButton: true,
        title: customTitleText(
          'About Fwitter',
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          const HeaderWidget(
            'Help',
            secondHeader: true,
          ),
          SettingRowWidget(
            "Help Centre",
            vPadding: 0,
            showDivider: false,
            onPressed: () {
              Utility.launchURL(
                  "https://github.com/TheAlphamerc/moimoi/issues");
            },
          ),
          const HeaderWidget('Legal'),
          const SettingRowWidget(
            "Terms of Service",
            showDivider: true,
          ),
          const SettingRowWidget(
            "Privacy policy",
            showDivider: true,
          ),
          const SettingRowWidget(
            "Cookie use",
            showDivider: true,
          ),
          SettingRowWidget(
            "Legal notices",
            showDivider: true,
            onPressed: () async {
              showLicensePage(
                context: context,
                applicationName: 'Fwitter',
                applicationVersion: '1.0.0',
                useRootNavigator: true,
              );
            },
          ),
          const HeaderWidget('Developer'),
          SettingRowWidget("Github", showDivider: true, onPressed: () {
            Utility.launchURL("https://github.com/TheAlphamerc");
          }),
          SettingRowWidget("LinkidIn", showDivider: true, onPressed: () {
            Utility.launchURL("https://www.linkedin.com/in/thealphamerc/");
          }),
          SettingRowWidget("Twitter", showDivider: true, onPressed: () {
            Utility.launchURL("https://twitter.com/TheAlphaMerc");
          }),
          SettingRowWidget("Blog", showDivider: true, onPressed: () {
            Utility.launchURL("https://dev.to/thealphamerc");
          }),
        ],
      ),
    );
  }
}
