import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_farm/providers/user.dart';

import 'config/app.dart' as app_config;
import 'pages/dashboard/view/dashboard_view.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  final Widget appTitle = const Text(app_config.appName);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: appTitle),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    Text(
                      "${user.firstName} ${user.lastName}",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Image.memory(
                      base64Decode(user.profileBase64),
                      height: 100.0,
                    )
                  ],
                ),
              ),
              ListTile(
                title: const Text('Animal'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Stock'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: const Center(
          child: DashboardView(),
        ),
      ),
    );
  }
}
