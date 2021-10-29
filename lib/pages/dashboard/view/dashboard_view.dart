import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/background.dart';
import '../widgets/button.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const DashboardBackground(),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Assets',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Wrap(
                  spacing: 20,
                  children: [
                    ShowMaterialButton(
                      icon: Image.asset('assets/icons/cow_1.png'),
                      amount: 5000,
                      unit: 'Units',
                    ),
                    ShowMaterialButton(
                      icon: Image.asset('assets/icons/chicken_1.png'),
                      amount: 20,
                      unit: 'Units',
                    ),
                    const ShowAllMaterialButton(),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Raw materials',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Wrap(
                  spacing: 20,
                  children: [
                    ShowMaterialButton(
                      icon: Image.asset('assets/icons/rice_1.png'),
                      amount: 5000,
                      unit: 'Bags',
                    ),
                    ShowMaterialButton(
                      icon: Image.asset('assets/icons/chicken_1.png'),
                      amount: 20,
                      unit: 'Units',
                    ),
                    const ShowAllMaterialButton(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Wrap(
                  spacing: 20,
                  children: [
                    ShowMaterialButton(
                      icon: Image.asset('assets/icons/cow_1.png'),
                      amount: 5000,
                      unit: 'Units',
                    ),
                    ShowMaterialButton(
                      icon: Image.asset('assets/icons/chicken_1.png'),
                      amount: 20,
                      unit: 'Units',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Wrap(
                  spacing: 20,
                  children: [
                    ShowMaterialButton(
                      icon: Image.asset('assets/icons/cow_1.png'),
                      amount: 5000,
                      unit: 'Units',
                    ),
                    ShowMaterialButton(
                      icon: Image.asset('assets/icons/chicken_1.png'),
                      amount: 20,
                      unit: 'Units',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
