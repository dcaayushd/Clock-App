import 'package:flutter/material.dart';
// import '../../utils/time_zone_utils.dart';
import '../widgets/clock.dart';
import '../widgets/country_card.dart';
import '../widgets/time_in_hour_and_minute.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Kathmandu, Nepal | NPT",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const TimeInHourAndMinute(),
            const Spacer(),
            const Clock(),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CountryCard(
                      country: "New York, USA",
                      timeZone: "+10 HRS 45 MINS | EST",
                      iconSrc: "assets/icons/Liberty.svg",
                      time: "9:20",
                      period: "pM",
                      // time: getCurrentTimeForTimeZone("+3 HRS | EST").format(context),
                      // period: getCurrentTimeForTimeZone("+3 HRS | EST").period.name,

                    ),
                    CountryCard(
                      country: "Sydney, AU",
                      timeZone: "+5 HRS 15 MINS | AEST",
                      iconSrc: "assets/icons/Sydney.svg",
                      time: "1:20",
                      period: "AM",
                    ),
                    CountryCard(
                      country: "New Delhi, India",
                      timeZone: "-15 MINS | IST",
                      iconSrc: "assets/icons/india-gate.svg",

                      time: "9:20",
                      period: "PM",
                    ),
                    CountryCard(
                      country: "London, UK",
                      timeZone: "-4 HRS 45 MINS | BST",
                      iconSrc: "assets/icons/big-ben.svg",
                      time: "7:20",
                      period: "AM",
                    ),
                    CountryCard(
                      country: "Tokyo, Japan",
                      timeZone: "+3 HRS 15 MINS | JST",
                      iconSrc: "assets/icons/tokyo-tower.svg",
                      time: "9:20",
                      period: "PM",
                    ),
                    CountryCard(
                      country: "Paris, France",
                      timeZone: "-3 HRS 45 MINS | CEST",
                      iconSrc: "assets/icons/eiffel-tower.svg",
                      time: "6:20",
                      period: "AM",
                    ),
                    CountryCard(
                      country: "Beijing, China",
                      timeZone: "+2 HRS 15 MINS | CST",
                      iconSrc: "assets/icons/china.svg",
                      time: "8:20",
                      period: "PM",
                    ),
                    CountryCard(
                      country: "Dubai, UAE",
                      timeZone: "-1 HRS 45 MINS | GST",
                      iconSrc: "assets/icons/burj-khalifa.svg",
                      time: "7:20",
                      period: "PM",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
