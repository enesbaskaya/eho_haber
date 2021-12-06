import 'package:mobx/mobx.dart';
import 'package:firebase_auth/firebase_auth.dart';
part 'home_page_view_model.g.dart';

class HomePageViewModel = _HomePageViewModelBase with _$HomePageViewModel;

abstract class _HomePageViewModelBase with Store {
  @action
  String getCurrentUser() {
    return FirebaseAuth.instance.currentUser!.email.toString();
  }
}
