import 'package:flutter_riverpod/flutter_riverpod.dart';

//currently only used to change the the language for the dishes in dummy_data

// I was informed that the package: https://pub.dev/packages/easy_localization
//could have made this much easiesr

final languageProvider = StateNotifierProvider<LanguageProvider, bool>((ref) {
  return LanguageProvider();
});

class LanguageProvider extends StateNotifier<bool> {
  LanguageProvider() : super(true);

  void toggleLanguage(bool newValue) {
    state = newValue;
  }
}
