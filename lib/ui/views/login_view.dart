import 'package:flutter/material.dart';
import 'package:boilerplate_provider_v1/core/constants/namedRoute.dart';
import 'package:boilerplate_provider_v1/ui/shared/styles/ui_helpers.dart';
import 'package:boilerplate_provider_v1/ui/widgets/reusable/button_widget.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: UIHelper.horizontalEdgeMedium,
          children: <Widget>[
            ButtonWidget(
              title: 'Login',
              color: Colors.red,
              titleColor: Colors.white,
              onPressed: (){Navigator.pushNamed(context, RoutePaths.Home);},
            )
          ],
        ),
      ),
    );
  }
}