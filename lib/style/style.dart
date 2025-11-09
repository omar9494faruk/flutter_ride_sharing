//Colors

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

var primaryColor = Color(0xFF584CF4);
var colorLightGrey = Color(0xFF666666);
var colorDark = Color(0xFF222222);
var colorWhite = Color(0xFFFFFFFF);
var colorRed = Color(0xFFFF4646);
var colorOrange = Color(0xFFFFA000);



//App Bar Header Text
TextStyle AppBarHeader(){
  return GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: colorWhite,
  );
}

//Home header text
TextStyle HomeHeaderText(){
  return GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: colorDark
  );
}

//Home profile Name text
TextStyle HomeProfileName(){
  return GoogleFonts.inter(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: colorLightGrey
  );
}

//Home product title text
TextStyle HomeProductTitle(){
  return GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: colorLightGrey
  );
}

//Home product Price text
TextStyle ProductPrice(){
  return GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: colorDark
  );
}

//Home product previous Price text
TextStyle ProductPrevPrice(){
  return GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: colorLightGrey,
      decoration: TextDecoration.lineThrough,
  );
}

//Home product discount text
TextStyle ProductDiscount(){
  return GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: primaryColor,
  );
}

//Home product discount text
TextStyle ProductRating(){
  return GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xFF888888),
  );
}

//Home product discount text
TextStyle ProductReviewCount(){
  return GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: colorLightGrey,
  );
}

//Home product discount text
TextStyle EventTitle(){
  return GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: colorLightGrey,
  );
}











//
//
// SizedBox(
// height: 400,
// child: GridView.builder(
// itemCount: 4,
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// crossAxisSpacing: 2,
// childAspectRatio: 1.2,
// ),
// itemBuilder: (context, index) {
// return Card(
// color: Colors.transparent,
// elevation: 0,
// child: Column(
// children: [
// Image.asset("Images/services1.png"),
// SizedBox(height: 10),
// Text(
// "Annual Meintenance",
// style: HomeProductTitle(),
// ),
// SizedBox(height: 10),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Text("\$ 4000", style: ProductPrice()),
// Text("\$ 5000", style: ProductPrevPrice()),
// Text("20% Off", style: ProductDiscount()),
// ],
// ),
// ],
// ),
// );
// },
// ),
// ),