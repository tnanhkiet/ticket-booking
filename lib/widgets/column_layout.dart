import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';

class ColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  const ColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,
            style: AppStyles.h3.copyWith(color: AppStyles.textColor)),
        Gap(AppLayout.getHeight(5)),
        Text(secondText, style: AppStyles.h4),
      ],
    );
  }
}
