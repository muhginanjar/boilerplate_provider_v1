
import 'dart:async';

import 'package:boilerplate_provider_v1/core/models/userModel.dart';

import 'api_service.dart';

class AuthenticationService {
    final Api _api;

  AuthenticationService({Api api}) : _api = api;
  //ignore: close_sinks
  var _userController = StreamController<UserModel>();

  Stream<UserModel> get user => _userController.stream;

}
