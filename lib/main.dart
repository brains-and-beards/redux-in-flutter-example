import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'screens/login/login_screen.dart';
import 'model/redux/reducers/app_reducer.dart';
import 'model/redux/state/app_state.dart';
import 'model/navigation/navigation.dart';
import 'screens/home//home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final store = Store<AppState>(
      appReducer,
      initialState: new AppState.initial(),
      middleware: [thunkMiddleware]
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Redux Example',
        navigatorKey: Keys.navKey,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: LoginScreen(title: 'Log in'),
        routes: {
          Routes.homeScreen: (context) {
            return HomeScreen();
          },
        },
      ),
    );
  }
}
