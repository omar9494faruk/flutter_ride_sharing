import 'package:bloc_practice/components/section_title_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/app_bar.dart';
import '../style/style.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationAppBar(context, "Home"),
      drawer: Drawer(child: Center(child: Text('Drawer content'))),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Nearby User Section
            TitleSection(context, "Nearby Users"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
              child: PageView.builder(
                itemCount: 10,
                padEnds: false,
                controller: PageController(viewportFraction: 0.2),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('Images/profile1.png'),
                        ),
                        Text("Alberta", style: HomeProfileName()),
                      ],
                    ),
                  );
                },
              ),
            ),
            //Deals of the day section
            TitleSection(context, "Deals of the Day"),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.231,
                child: PageView.builder(
                  itemCount: 10,
                  padEnds: false,
                  controller: PageController(viewportFraction: 0.5),
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Column(
                        children: [
                          Image.asset("Images/product1.png"),
                          SizedBox(height: 10),
                          Text(
                            "Racing Dual Visor Helmet",
                            style: HomeProductTitle(),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("\$ 4000", style: ProductPrice()),
                              Text("\$ 5000", style: ProductPrevPrice()),
                              Text("20% Off", style: ProductDiscount()),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 12),
                              Container(
                                decoration: BoxDecoration(
                                  color: colorOrange,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Icon(
                                    CupertinoIcons.star_fill,
                                    color: colorWhite,
                                    size: 14,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text("4.5", style: ProductRating()),
                              SizedBox(width: 5),
                              Text("(154)", style: ProductReviewCount()),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            //Upcoming events section
            TitleSection(context, "Upcoming Events"),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .139,
                child: PageView.builder(
                  itemCount: 10,
                  padEnds: false,
                  controller: PageController(viewportFraction: 0.4),
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.transparent,
                      elevation: 0,
                      //renderflex
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Image.asset("Images/eventImage.png"),
                              Container(
                                width: double.infinity,
                                height: 94,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 13,
                                      left: 5,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        child: Image.asset(
                                          'Images/eventProfileLayer.png',
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 13,
                                      left: 16,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        child: Image.asset(
                                          'Images/eventProfileLayer.png',
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 13,
                                      left: 25,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        child: Image.asset(
                                          'Images/eventProfileLayer.png',
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 13,
                                      left: 34,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.circular(
                                            24,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "+2",
                                            style: TextStyle(
                                              color: colorWhite,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text("Goa to Gujarat", style: EventTitle()),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            //Buy Services Section
            TitleSection(context, "Upcoming Events"),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, bottom: 100),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .158,
                child: PageView.builder(
                  itemCount: 10,
                  padEnds: false,
                  controller: PageController(viewportFraction: 0.5),
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('Images/services1.png'),
                          SizedBox(height: 5),
                          Text("Annual Meintenance", style: EventTitle()),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
