import 'package:flutter/material.dart';

import 'package:real_estate/views/categories/categoryModal.dart';
import 'package:real_estate/views/categories/house%20types/NoTypes/noType.dart';
import 'package:real_estate/views/categories/house%20types/apartements/apartements.dart';
import 'package:real_estate/views/categories/house%20types/building/building.dart';
import 'package:real_estate/views/categories/house%20types/houses/houses.dart';
import 'package:real_estate/views/categories/house%20types/lands/lands.dart';
import 'package:real_estate/views/categories/house%20types/shops/shops.dart';

import '../views/categories/house types/offices/offices.dart';
import '../views/categories/house types/residential/residential.dart';

const kPrimaryColor = Color(0xFFFF8084);
const kAccentColor = Color(0xFFF1F1F1);
const kWhiteColor = Color(0xFFFFFFFF);
const kLightColor = Color(0xFF808080);
const kDarkColor = Color(0xFF303030);
const kTransparent = Colors.transparent;

const kDefaultPadding = 24.0;
const kLessPadding = 10.0;
const kFixPadding = 16.0;
const kLess = 4.0;

const kShape = 30.0;

const kRadius = 0.0;
const kAppBarHeight = 56.0;

const kHeadTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);

const kSubTextStyle = TextStyle(
  fontSize: 18.0,
  color: kLightColor,
);

const kTitleTextStyle = TextStyle(
  fontSize: 20.0,
  color: kPrimaryColor,
);

const kDarkTextStyle = TextStyle(
  fontSize: 20.0,
  color: kDarkColor,
);

const kDivider = Divider(
  color: kAccentColor,
  thickness: kLessPadding,
);

const kSmallDivider = Divider(
  color: kAccentColor,
  thickness: 5.0,
);

final labels = [
  'Notifications',
  'Payments',
  'Message',
  'My Orders',
  'Setting Account',
  'Call Center',
  'About Application',
];

final icons = [
  Icons.notifications,
  Icons.payment,
  Icons.message,
  Icons.local_dining,
  Icons.settings,
  Icons.person,
  Icons.info,
];

final categoryList = [
  CategoryModal(
      image: "assets/images/appartement.jpeg",
      category: "Apartements",
      discount: 10,
      page: Appartements()),
  CategoryModal(
      image: "assets/images/bureau.jpg",
      category: "Offices",
      discount: 10,
      page: Offices()),
  CategoryModal(
      image: "assets/images/commerce.jpg",
      category: "Shops",
      discount: 10,
      page: Shops()),
  CategoryModal(
      image: "assets/images/immeuble.jpg",
      category: "Buildings",
      discount: 10,
      page: Building()),
  CategoryModal(
      image: "assets/images/maison.jpg",
      category: "Houses",
      discount: 10,
      page: houses()),
  CategoryModal(
      image: "assets/images/residence.jpeg",
      category: "Residential Homes",
      discount: 10,
      page: ResidentialHomes()),
  CategoryModal(
      image: "assets/images/terrain.jpg",
      category: "Lands",
      discount: 10,
      page: Lands()),
  CategoryModal(
      image: 'assets/images/others.jpg',
      category: "Others",
      discount: 10,
      page: NoType())
];
