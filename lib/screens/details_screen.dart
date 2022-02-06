import 'package:flutter/material.dart';
import '../models/house.dart';
import '../custom/border_box.dart';
import '../utils/constants.dart';
import '../utils/widget_functions.dart';
import '../utils/custom_functions.dart';
import '../custom/option_button.dart';

class DetailsScreen extends StatelessWidget {
  final House houseObj;

  DetailsScreen({required this.houseObj});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);

    final listViewData = [
      {'label': 'Square Foot', 'value': '${houseObj.area}'},
      {'label': 'Bedrooms', 'value': '${houseObj.bedrooms}'},
      {'label': 'Bathrooms', 'value': '${houseObj.bathrooms}'},
      {'label': 'Garage', 'value': '${houseObj.garage}'},
    ];

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(houseObj.image),
                        Positioned(
                            child: Padding(
                          padding: kSidePadding,
                          child: Column(
                            children: [
                              addVertifcalSpace(kSpace),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  BorderBox(
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: kCOLOR_BLACK,
                                    ),
                                  ),
                                  BorderBox(
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: kCOLOR_BLACK,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                    addVertifcalSpace(kSpace),
                    Padding(
                      padding: kSidePadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                formatCurrency(
                                    amount: houseObj.amount, decimalCount: 0),
                                style: themeData.textTheme.headline1,
                              ),
                              Text(
                                houseObj.address,
                                style: themeData.textTheme.bodyText2,
                              ),
                            ],
                          ),
                          BorderBox(
                            width: 120,
                            height: 50,
                            child: Text(
                              '20 Hours ago',
                              style: themeData.textTheme.headline5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    addVertifcalSpace(25),
                    Padding(
                      padding: kSidePadding,
                      child: Text(
                        'House Information',
                        style: themeData.textTheme.bodyText1,
                      ),
                    ),
                    addVertifcalSpace(25),
                    Expanded(
                      flex: 1,
                      child: ListView.builder(
                          padding: MediaQuery.of(context).padding.copyWith(
                                left: 0,
                                right: 0,
                                bottom: 0,
                              ),
                          scrollDirection: Axis.horizontal,
                          itemCount: listViewData.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(left: kSpace),
                              child: Column(
                                children: [
                                  BorderBox(
                                    width: 100,
                                    height: 90,
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      listViewData[index]['value']!,
                                      style: themeData.textTheme.headline3,
                                    ),
                                  ),
                                  addVertifcalSpace(10),
                                  Text(
                                    listViewData[index]['label']!,
                                    style: themeData.textTheme.headline4,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: kSidePadding,
                        child: Text(
                          houseObj.description,
                          style: themeData.textTheme.bodyText2,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    addVertifcalSpace(25),
                  ],
                ),
                Positioned(
                  bottom: 20,
                  width: size.width,
                  child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OptionButton(
                        icon: Icons.message_rounded,
                        text: 'Message',
                        width: size.width * 0.40,
                      ),
                      addHorizantalSpace(10),
                      OptionButton(
                        icon: Icons.phone_rounded,
                        text: 'Call',
                        width: size.width * 0.40,
                      )
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
