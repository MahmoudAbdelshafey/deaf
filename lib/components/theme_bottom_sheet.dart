import 'package:first_project/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var SettingsProvider = Provider.of<SettingProvider>(context);
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                SettingsProvider.changeTheme(ThemeMode.light);
              },
              child: SettingsProvider.currentTheme == ThemeMode.light
                  ? getSelectedItem('Light')
                  : getUnSelectedItem("Light")),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                SettingsProvider.changeTheme(ThemeMode.dark);
              },
              child: SettingsProvider.currentTheme == ThemeMode.dark
                  ? getSelectedItem('Dark')
                  : getUnSelectedItem('Dark')),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        Spacer(),
        Icon(
          Icons.check,
          color: Colors.green,
        )
      ],
    );
  }

  Widget getUnSelectedItem(String text) {
    return Text(text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ));
  }
}
