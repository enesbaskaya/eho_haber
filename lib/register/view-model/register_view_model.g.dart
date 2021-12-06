// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterViewModel on _RegisterViewModelBase, Store {
  final _$emailControllerAtom =
      Atom(name: '_RegisterViewModelBase.emailController');

  @override
  TextEditingController get emailController {
    _$emailControllerAtom.reportRead();
    return super.emailController;
  }

  @override
  set emailController(TextEditingController value) {
    _$emailControllerAtom.reportWrite(value, super.emailController, () {
      super.emailController = value;
    });
  }

  final _$passwordControllerAtom =
      Atom(name: '_RegisterViewModelBase.passwordController');

  @override
  TextEditingController get passwordController {
    _$passwordControllerAtom.reportRead();
    return super.passwordController;
  }

  @override
  set passwordController(TextEditingController value) {
    _$passwordControllerAtom.reportWrite(value, super.passwordController, () {
      super.passwordController = value;
    });
  }

  final _$userRegisterAsyncAction =
      AsyncAction('_RegisterViewModelBase.userRegister');

  @override
  Future<dynamic> userRegister(
      {String? email, String? password, BuildContext? context}) {
    return _$userRegisterAsyncAction.run(() =>
        super.userRegister(email: email, password: password, context: context));
  }

  @override
  String toString() {
    return '''
emailController: ${emailController},
passwordController: ${passwordController}
    ''';
  }
}
