class NoTypeProperty {
  String label;
  String name;
  String price;
  String location;
  String sqm;
  String review;
  String description;
  String frontImage;
  String ownerImage;
  List<String> images;

  NoTypeProperty(
      this.label,
      this.name,
      this.price,
      this.location,
      this.sqm,
      this.review,
      this.description,
      this.frontImage,
      this.ownerImage,
      this.images);
}

List<NoTypeProperty> getNoTypePropertyList() {
  return <NoTypeProperty>[
    NoTypeProperty(
      "RENT",
      "Mienster Aerodrom",
      "8.500.000",
      "Sprigfield",
      "23,456",
      "4.4",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/Aerodrome_Millau_P1010659mod.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/060950782863-web-tete-750x450.jpg",
        "assets/images/garage-automobile-de-service-25128663.jpg",
        "assets/images/Les-avantages-automatisation-entrepots-LE.jpg",
        "assets/images/nbc-g365201f2a_1920.jpg",
        "assets/images/immeuble.jpg",
      ],
    ),
    NoTypeProperty(
      "RENT",
      "Fermont Warehouse",
      "5.000.000",
      "Fermont",
      "11,300",
      "4.6",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/WEBMAG-15.png",
      "assets/images/logo_size.png",
      [
        "assets/images/architecture-gfe4e13806_1920.jpg",
        "assets/images/060950782863-web-tete-750x450.jpg",
        "assets/images/garage-automobile-de-service-25128663.jpg",
        "assets/images/Les-avantages-automatisation-entrepots-LE.jpg",
        "assets/images/WEBMAG-15.png",
      ],
    ),
    NoTypeProperty(
      "RENT",
      "Centre Auto Express",
      "23.000",
      "Louisiane",
      "146",
      "4.1",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/impression-garage-automobile.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/WEBMAG-15.png",
        "assets/images/architecture-gfe4e13806_1920.jpg",
        "assets/images/060950782863-web-tete-750x450.jpg",
        "assets/images/garage-automobile-de-service-25128663.jpg",
        "assets/images/Les-avantages-automatisation-entrepots-LE.jpg",
      ],
    ),
    NoTypeProperty(
      "RENT",
      "Vanisher Warehouse",
      "2,500.000",
      "Portland",
      "4,100",
      "4.5",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/Les-avantages-automatisation-entrepots-LE.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/immeuble.jpg",
        "assets/images/WEBMAG-15.png",
        "assets/images/architecture-gfe4e13806_1920.jpg",
        "assets/images/060950782863-web-tete-750x450.jpg",
        "assets/images/garage-automobile-de-service-25128663.jpg",
      ],
    ),
    NoTypeProperty(
      "RENT",
      "LS Auto Services",
      "1,500.000",
      "Los Santos",
      "1,100",
      "4.5",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/garage-automobile-de-service-25128663.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/Les-avantages-automatisation-entrepots-LE.jpg",
        "assets/images/nbc-g365201f2a_1920.jpg",
        "assets/images/WEBMAG-15.png",
        "assets/images/city-g6dc609ce4_1920.jpg",
        "assets/images/060950782863-web-tete-750x450.jpg",
      ],
    ),
    NoTypeProperty(
      "RENT",
      "Acrobat Warehouse",
      "2,500.000",
      "Groove Street",
      "3,100",
      "4.5",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/060950782863-web-tete-750x450.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/garage-automobile-de-service-25128663.jpg",
        "assets/images/Les-avantages-automatisation-entrepots-LE.jpg",
        "assets/images/mall-g2ad4c8504_1920.jpg",
        "assets/images/WEBMAG-15.png",
        "assets/images/architecture-gfe4e13806_1920.jpg",
      ],
    ),
  ];
}
