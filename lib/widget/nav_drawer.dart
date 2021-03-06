import 'package:flatter/ui/login/login_page.dart';
import 'package:flatter/ui/settings/settings_page.dart';
import 'package:flatter/util/locale.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(title: Text(context.l10n().appName.toUpperCase())),
          Divider(),
          ListTile(
            title: Text(context.l10n().settingsTitle),
            leading: const Icon(Icons.settings),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          ListTile(
            title: Text(context.l10n().actionLogout),
            leading: const Icon(Icons.account_circle),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
