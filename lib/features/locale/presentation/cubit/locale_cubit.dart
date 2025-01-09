import 'package:flutter/material.dart';
import '../../../../core/di/injection_container.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/app_strings.dart';
import '../../domain/usecases/change_lang.dart';
import '../../domain/usecases/get_saved_lang.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  late final ChangeLangUseCase changeLangUseCase;
  late final GetSavedLangUseCase getSavedLangUseCase;

  LocaleCubit(
      {required this.changeLangUseCase, required this.getSavedLangUseCase})
      : super(const ChangeLocaleState(locale: Locale(AppStrings.arabicCode)));

  bool isArabic = true;

  Future<void> getSavedLang() async {
    final response = await getSavedLangUseCase.call(sl<NoParams>());
    response.fold(
      (failure) => LocaleError(msg: failure.message),
      (value) {
        emit(ChangeLocaleState(locale: Locale(value)));
      },
    );
  }

  Future<void> _changeLang(String langCode) async {
    final response = await changeLangUseCase.call(langCode);
    response.fold((failure) => LocaleError(msg: failure.message), (value) {
      emit(ChangeLocaleState(locale: Locale(langCode)));
    });
  }

  void toEnglish() => _changeLang(AppStrings.englishCode);

  void toArabic() => _changeLang(AppStrings.arabicCode);
}
