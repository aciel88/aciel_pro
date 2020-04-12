import 'package:aciel_pro/screens/my_account_page.dart';
import 'package:aciel_pro/screens/my_orders_page.dart';

import 'package:aciel_pro/screens/home_page.dart';
import 'package:aciel_pro/screens/QnA_page.dart';
import 'package:bloc/bloc.dart';
enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
  QnAClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountsPage();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield MyOrdersPage();
        break;
      case NavigationEvents.QnAClickedEvent:
        yield QnAPage();
        break;
    }
  }
}