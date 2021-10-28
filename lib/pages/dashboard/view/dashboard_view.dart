import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/background.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const DashboardBackground(),
        Container(
          color: Colors.blue,
          child: const Text('Under construction'),
        ),
        Container(
          color: Colors.red,
          child: const Text('aaa'),
        ),
      ],
    );
  }
}
