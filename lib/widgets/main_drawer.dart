import 'package:flutter/material.dart';
import 'package:meals/providers/language_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key, required this.onSelectScreen}) : super(key: key);

  final void Function(String identifier) onSelectScreen;

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Theme.of(context).colorScheme.primaryContainer,
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  "Cooking up!",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26,
              color: Theme.of(context).colorScheme.background,
            ),
            title: Text(
              "Meals",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 24),
            ),
            onTap: () {
              widget.onSelectScreen("meals");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
              color: Theme.of(context).colorScheme.background,
            ),
            title: Text(
              "Filters",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 24),
            ),
            onTap: () {
              widget.onSelectScreen("filters");
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final languageState = ref.read(languageProvider);

              return Row(
                children: <Widget>[
                  const SizedBox(width: 18),
                  Icon(
                    Icons.flag,
                    size: 26,
                    color: Theme.of(context).colorScheme.background,
                  ),
                  Text(
                    "EN",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 24),
                  ),
                  Switch(
                    value: languageState,
                    onChanged: (bool newValue) {
                      // Handle the language change here using newValue
                      ref
                          .read(languageProvider.notifier)
                          .toggleLanguage(newValue);
                    },
                  ),
                  Text(
                    "NO",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 24),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
