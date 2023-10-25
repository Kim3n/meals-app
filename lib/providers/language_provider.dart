import 'package:flutter_riverpod/flutter_riverpod.dart';

//currently only used to change the the language for the dishes in dummy_data

final languageProvider = StateNotifierProvider<LanguageProvider, bool>((ref) {
  return LanguageProvider();
});

class LanguageProvider extends StateNotifier<bool> {
  LanguageProvider() : super(true);

  void toggleLanguage(bool newValue) {
    state = newValue;
  }
}
