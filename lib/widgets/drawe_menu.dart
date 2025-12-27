import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:menouts/screens/notes_home_screen.dart';

//import 'package:menouts/screens/profile_screen.dart';
import 'package:menouts/screens/settings_screen.dart';

import 'package:menouts/core/locale/app_locale.dart';
import 'package:menouts/core/locale/locale_provider.dart';


class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});


  @override
  Widget build(BuildContext context) {

    final locale = context.watch<LocaleProvider>().locale;
    final texts = AppLocale(locale.languageCode);

    return Drawer(
      width: MediaQuery.of(context).size.width * 0.85,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).appBarTheme.backgroundColor,
            ),
            child: Text(
              texts.title,
              style: TextStyle(
                color: Theme.of(context).appBarTheme.foregroundColor,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text(texts.home),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const NotesHomeScreen(),
                ),
              );
            },
          ),
          /*
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(texts.profile),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ProfileScreen(),
                ),
              );
            },
          ),
          */ // Este es el perfil, lo comento por ahora a futureishon
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(texts.setting),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SettingsScreen(),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Text(  
              texts.version,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
