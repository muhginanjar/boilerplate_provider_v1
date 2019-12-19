import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/constants/router.dart';
import 'core/provider_setup.dart';
import 'core/services/handler/service_handler.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((_) {
  //   runApp(Boilerplateproviderv1());
  // }); 
  //uncomment function di atas jika kamu ingin mengunci device orientation
  runApp(Boilerplateproviderv1());
}
class Boilerplateproviderv1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Boilerplate Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RoutePaths.Login,
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
