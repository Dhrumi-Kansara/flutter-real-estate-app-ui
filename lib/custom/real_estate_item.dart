import 'package:flutter/material.dart';
import 'package:real_estate_app/utils/widget_functions.dart';
import '../utils/constants.dart';
import '../models/house.dart';
import './border_box.dart';
import '../utils/custom_functions.dart';

class RealEstateItem extends StatelessWidget {
  final House houseObj;

  RealEstateItem({required this.houseObj});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(houseObj.image),
              ),
              Positioned(
                right: 15,
                top: 15,
                child: BorderBox(
                  height: 50,
                  width: 50,
                  child: Icon(Icons.favorite_border, color: kCOLOR_BLACK),
                ),
              )
            ],
          ),
          addVertifcalSpace(10),
          Row(
            children: [
              Text(
                formatCurrency(amount: houseObj.amount, decimalCount: 0),
                style: themeData.textTheme.headline1,
              ),
              addHorizantalSpace(10),
              Text(
                houseObj.address,
                style: themeData.textTheme.bodyText2,
              ),
            ],
          ),
          addVertifcalSpace(10),
          Text(
            '${houseObj.bedrooms} bedrooms / ${houseObj.bathrooms} bathrooms / ${houseObj.area} sqft',
            style: themeData.textTheme.headline5,
          )
        ],
      ),
    );
  }
}
