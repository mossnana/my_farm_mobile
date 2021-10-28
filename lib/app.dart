import 'package:flutter/material.dart';

import 'config/app.dart' as app_config;
import 'pages/dashboard/view/dashboard_view.dart';

class App extends StatelessWidget {
  final Widget appTitle = const Text(app_config.appName);

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: appTitle),
        body: const Center(
          child: DashboardView(),
        ),
      ),
    );
  }
}
