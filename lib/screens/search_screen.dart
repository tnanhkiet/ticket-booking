import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/double_text_widget.dart';
import 'package:ticket_booking/widgets/icon_text_widget.dart';
import 'package:ticket_booking/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are\nyou looking for?',
            style: AppStyles.h1.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(20)),
          const TicketTabs(firstTab: 'Airline tickts', secondTab: 'Hotels'),
          Gap(AppLayout.getHeight(25)),
          const IconTextWidget(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(20)),
          const IconTextWidget(
              icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text('Find Tickets',
                  style: AppStyles.textStyle.copyWith(color: Colors.white)),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const DoubleTextWidget(
              bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(425),
                width: AppLayout.getScreenWidth() * 0.42,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(3, 6),
                      blurRadius: 6,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/sit.jpg'))),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out this chance.",
                      style: AppStyles.h2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: AppLayout.getScreenWidth() * 0.44,
                        height: AppLayout.getHeight(200),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3ab8b8),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(3, 6),
                              blurRadius: 6,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: AppStyles.h2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              'Take the survey about our services and get discount',
                              style: AppStyles.h2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      // Positioned(
                      //   top: -40,
                      //   right: -45,
                      //   child: Container(
                      //     padding: const EdgeInsets.all(30),
                      //     decoration: BoxDecoration(
                      //       shape: BoxShape.circle,
                      //       border: Border.all(
                      //           width: 18, color: const Color(0xFF189999)),
                      //       color: Colors.transparent,
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: AppLayout.getScreenWidth() * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFec6545),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(3, 6),
                          blurRadius: 6,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Text('Take love',
                            style: AppStyles.h2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center),
                        Gap(AppLayout.getHeight(10)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 28),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 40),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 28),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
