import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/layout_builder_widget.dart';
import 'package:ticket_booking/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return SizedBox(
      width: AppLayout.getScreenWidth() * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 167 : 169),
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: AppStyles.h3.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : AppStyles.textColor)),
                      const Spacer(),
                      isColor == null
                          ? const ThickContainer()
                          : const ThickContainer(isColor: true),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                                height: 24,
                                child: LayoutBuilderWidget(
                                  sections: 6,
                                  isColor: true,
                                  width: 5,
                                )),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport,
                                    color: isColor == null
                                        ? Colors.white
                                        : const Color(0xFF8accf7)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      isColor == null
                          ? const ThickContainer()
                          : const ThickContainer(isColor: true),
                      const Spacer(),
                      Text(ticket['to']['code'],
                          style: AppStyles.h3.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : AppStyles.textColor)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(ticket['from']['name'],
                            style: AppStyles.h4.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Colors.grey[500])),
                      ),
                      Text(ticket['flying_time'],
                          style: AppStyles.h4.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : AppStyles.textColor)),
                      SizedBox(
                        width: 100,
                        child: Text(ticket['to']['name'],
                            textAlign: TextAlign.end,
                            style: AppStyles.h4.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Colors.grey[500])),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: isColor == null ? AppStyles.orangeColor : Colors.white,
              child: Row(
                children: const [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: LayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              decoration: BoxDecoration(
                color: isColor == null ? AppStyles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                  bottomRight: Radius.circular(isColor == null ? 21 : 0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(ticket['date'],
                            style: AppStyles.h3.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : AppStyles.textColor)),
                      ),
                      Text(ticket['departure_time'],
                          style: AppStyles.h3.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : AppStyles.textColor)),
                      SizedBox(
                        width: 80,
                        child: Text(ticket['number'].toString(),
                            textAlign: TextAlign.end,
                            style: AppStyles.h3.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : AppStyles.textColor)),
                      ),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text('Date',
                            style: AppStyles.h4.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Colors.grey[500])),
                      ),
                      Text('Departure time',
                          style: AppStyles.h4.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Colors.grey[500])),
                      SizedBox(
                        width: 80,
                        child: Text('Number',
                            textAlign: TextAlign.end,
                            style: AppStyles.h4.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Colors.grey[500])),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
