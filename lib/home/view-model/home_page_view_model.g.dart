// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomePageViewModel on _HomePageViewModelBase, Store {
  final _$userSigningOutAsyncAction =
      AsyncAction('_HomePageViewModelBase.userSigningOut');

  @override
  Future<dynamic> userSigningOut({BuildContext? context}) {
    return _$userSigningOutAsyncAction
        .run(() => super.userSigningOut(context: context));
  }

  final _$getCurrencyAsyncAction =
      AsyncAction('_HomePageViewModelBase.getCurrency');

  @override
  Future<List<Currency>> getCurrency() {
    return _$getCurrencyAsyncAction.run(() => super.getCurrency());
  }

  final _$getWeatherAsyncAction =
      AsyncAction('_HomePageViewModelBase.getWeather');

  @override
  Future<Weather?> getWeather() {
    return _$getWeatherAsyncAction.run(() => super.getWeather());
  }

  final _$getNewsAsyncAction = AsyncAction('_HomePageViewModelBase.getNews');

  @override
  Future<List<News>> getNews() {
    return _$getNewsAsyncAction.run(() => super.getNews());
  }

  final _$_HomePageViewModelBaseActionController =
      ActionController(name: '_HomePageViewModelBase');

  @override
  String? getCurrentUser() {
    final _$actionInfo = _$_HomePageViewModelBaseActionController.startAction(
        name: '_HomePageViewModelBase.getCurrentUser');
    try {
      return super.getCurrentUser();
    } finally {
      _$_HomePageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
