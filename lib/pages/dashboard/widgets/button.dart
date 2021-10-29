import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class ShowMaterialButton extends StatelessWidget {
  final Image icon;
  final int amount;
  final String unit;
  final NumberFormat amountFormat = NumberFormat('#,##0', 'en_US');
  final int maxAmount = 9999;

  ShowMaterialButton({
    Key? key,
    required this.icon,
    this.amount = 0,
    required this.unit,
  }) : super(key: key);

  String displayAmount() {
    int notExceedMaxNumber = amount <= maxAmount ? amount : maxAmount;

    return amountFormat.format(notExceedMaxNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: const Color(0xFFCDCDCD),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon
          SizedBox(
            width: 70,
            height: 50,
            child: Center(
              child: icon,
            ),
          ),
          // Value
          SizedBox(
            width: 70,
            height: 30,
            child: Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Text(
                displayAmount(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          // Unit
          SizedBox(
            width: 100,
            height: 20,
            child: Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Text(
                unit,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      fontFamily: 'Poppins',
                      color: const Color(0xFF888888),
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ShowAllMaterialButton extends StatelessWidget {
  const ShowAllMaterialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: const Color(0xFFCDCDCD),
        ),
      ),
      child: const Center(
        child: Text('Show all'),
      ),
    );
  }
}
