import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      floating: true,
      snap: true,
      title: Text('TODO'),
      centerTitle: false,
    );
  }
}
