import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_styles.dart';

class DoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const DoubleTextWidget(
      {Key? key, required this.bigText, required this.smallText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.h2),
        InkWell(
          onTap: () {},
          child: Text(smallText,
              style:
                  AppStyles.textStyle.copyWith(color: AppStyles.primaryColor)),
        ),
      ],
    );
  }
}
