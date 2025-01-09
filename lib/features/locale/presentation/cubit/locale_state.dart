import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class LocaleState extends Equatable {
  final Locale? locale;

  const LocaleState({required this.locale});

  @override
  List<Object?> get props => [locale.toString()];
}

class ChangeLocaleState extends LocaleState {
  const ChangeLocaleState({required super.locale});
}

class LocaleError extends LocaleState {
  final String? msg;

  const LocaleError({this.msg, super.locale});

  @override
  List<Object?> get props => [msg];
}

class ChangeLang extends LocaleState {


  const ChangeLang({ super.locale});

  @override
  List<Object?> get props => [];
}
