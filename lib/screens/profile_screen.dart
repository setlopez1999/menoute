
import 'package:flutter/material.dart';
import 'package:menouts/core/locale/app_locale.dart';
import 'package:menouts/widgets/drawe_menu.dart';

import 'package:provider/provider.dart';
import 'package:menouts/core/locale/locale_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.watch<LocaleProvider>().locale;
    final texts = AppLocale(locale.languageCode);
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        title: Text(texts.profile, style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: Center(
        child: Text(texts.noContentYet),
      ),
    );
  }
}