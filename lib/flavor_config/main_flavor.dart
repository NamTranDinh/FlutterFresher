import 'package:demo_app/flavor_config/app_config.dart';
import 'package:flutter/material.dart';

class MainFlavor extends StatelessWidget {
  final AppConfig appConfig;

  const MainFlavor(this.appConfig, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
  }

  AppBar _appBar() => AppBar(
        title: const Text('Demo Flavor'),
        centerTitle: true,
      );

  Widget _body(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(appConfig.appName),
          Text(appConfig.apiUrl),
        ],
      ),
    );
  }
}

AppConfig getConfigForFlavor(String flavor) {
  switch (flavor) {
    case 'dev':
      return AppConfig(
        apiUrl: 'https://api.dev.example.com',
        appName: '[DEV] app name',
      );
    case 'prod':
      return AppConfig(
        apiUrl: 'https://api.prod.example.com',
        appName: '[PROD] app name',
      );
    default:
      return AppConfig(
        apiUrl: 'https://api.default.example.com',
        appName: '[DEFAULT] app name',
      );
  }
}
