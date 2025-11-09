import 'package:bloc_practice/components/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../style/style.dart';

class CareScreen extends StatefulWidget {
  const CareScreen({super.key});

  @override
  State<CareScreen> createState() => _CareScreenState();
}

class _CareScreenState extends State<CareScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationAppBar(context, "Care"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Bike Name", style: HomeHeaderText()),
                  TextButton(
                    onPressed: () {},
                    child: Text("Change", style: TextStyle(color: primaryColor)),
                  ),
                ],
              ),
            ),
            Container(
              height: 4,
              width: double.infinity,
              color: Color(0xFFF3F2FF),
            ),
            //Car recommendation section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming Events", style: HomeHeaderText()),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_right_outlined),
                    iconAlignment: IconAlignment.end,
                    label: Text("View all"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, bottom: 5),
              child: SizedBox(
                height: 138,
                child: PageView.builder(
                  itemCount: 10,
                  padEnds: false,
                  controller: PageController(viewportFraction: 0.32999),
                  itemBuilder: (context, index) {
                    return AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('Images/car_recomendation.png'),
                            SizedBox(height: 5),
                            Text("Spark Plug", style: EventTitle()),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming Events", style: HomeHeaderText()),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_right_outlined),
                    iconAlignment: IconAlignment.end,
                    label: Text("View all"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 380,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Column(
                      children: [
                        Image.asset("Images/services1.png", fit: BoxFit.cover, ),
                        SizedBox(height: 10),
                        Text(
                          "Annual Meintenance",
                          style: HomeProductTitle(),
                          textAlign: TextAlign.start,
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
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
