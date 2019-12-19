import 'package:provider/provider.dart';
import 'package:boilerplate_provider_v1/core/models/userModel.dart';
import 'package:boilerplate_provider_v1/core/services/api_service.dart';
import 'package:boilerplate_provider_v1/core/services/authentication_service.dart';

List<SingleChildCloneableWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders
];

List<SingleChildCloneableWidget> independentServices = [
  Provider.value(value: ApiService())
];

List<SingleChildCloneableWidget> dependentServices = [
  ProxyProvider<ApiService, AuthenticationService>(
    update: (context, api, authenticationService) =>
        AuthenticationService(api: api),
  )
];

List<SingleChildCloneableWidget> uiConsumableProviders = [
  StreamProvider<UserModel>(
    create: (context) => Provider.of<AuthenticationService>(context, listen: false).user,
  )
];
