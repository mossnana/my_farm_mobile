import 'package:flutter/widgets.dart';

import '../../../helper/context.dart';

class DashboardBackground extends StatelessWidget {
  const DashboardBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0, 0),
      child: Container(
        width: getScreenWidth(context),
        height: getScreenHeight(context),
        decoration: const BoxDecoration(
          color: Color(0xFFF4F8F9),
        ),
      ),
    );
  }
}
