import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/providers/language_provider.dart';

final mealsProvider = Provider((ref) {
  final language = ref.watch(languageProvider);

  if (!language) {
    return dummyMeals;
  } else {
    return dummyMealsNO;
  }
});
