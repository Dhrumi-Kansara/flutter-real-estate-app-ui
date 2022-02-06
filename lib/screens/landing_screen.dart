import 'package:flutter/material.dart';
import 'package:real_estate_app/utils/constants.dart';
import '../utils/widget_functions.dart';
import '../models/house.dart';
import '../custom/border_box.dart';
import '../custom/choise_tag.dart';
import '../custom/real_estate_item.dart';
import '../custom/option_button.dart';

import './details_screen.dart';

class LandingSCreen extends StatelessWidget {
  const LandingSCreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);

    List<House> houseList = [
      House(
          image: "assets/images/image_2.jpg",
          amount: 200000,
          address: "Jenison, MI 49428, SF",
          bedrooms: 4,
          bathrooms: 2,
          area: 1416,
          garage: 1,
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
      House(
          image: "assets/images/image_1.jpg",
          amount: 140000,
          address: "351 Rockwood Dr, SF",
          bedrooms: 4,
          bathrooms: 2,
          area: 1416,
          garage: 1,
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    ];

    final List<String> choiseOptionList = [
      '<\$22,000',
      'For Sale',
      '3-4 Beds',
      '>1000 sqft'
    ];

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addVertifcalSpace(kSpace),
                  Padding(
                    padding: kSidePadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BorderBox(
                          width: 50,
                          height: 50,
                          child: Icon(
                            Icons.menu,
                            color: kCOLOR_BLACK,
                          ),
                        ),
                        BorderBox(
                          width: 50,
                          height: 50,
                          child: Icon(
                            Icons.settings,
                            color: kCOLOR_BLACK,
                          ),
                        ),
                      ],
                    ),
                  ),
                  addVertifcalSpace(kSpace),
                  Padding(
                    padding: kSidePadding,
                    child: Text(
                      'City',
                      style: themeData.textTheme.bodyText2,
                    ),
                  ),
                  addVertifcalSpace(10),
                  Padding(
                    padding: kSidePadding,
                    child: Text(
                      'San Fransisco',
                      style: themeData.textTheme.headline1,
                    ),
                  ),
                  Padding(
                    padding: kSidePadding,
                    child: Divider(
                      height: kSpace,
                      color: kCOLOR_GREY,
                    ),
                  ),
                  addVertifcalSpace(10),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...choiseOptionList
                            .map((text) => ChoiseTag(text: text))
                            .toList()
                      ],
                    ),
                  ),
                  addVertifcalSpace(10),
                  Expanded(
                    child: Padding(
                      padding: kSidePadding,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: houseList.length,
                        itemBuilder: (context, index) {
                          return InkWell( 
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(houseObj: houseList[index],)));
                            },
                            child: RealEstateItem(
                              houseObj: houseList[index],
                            ),

                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                width: size.width,
                child: Center(
                    child: OptionButton(
                  icon: Icons.map_rounded,
                  text: 'Map View',
                  width: size.width*0.40,
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
