class BuildingProperty {
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

  BuildingProperty(
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

List<BuildingProperty> getBuildingPropertyList() {
  return <BuildingProperty>[
    BuildingProperty(
      "RENT",
      "Nautilus Bulding",
      "3.500.000",
      "Seattle",
      "22,456",
      "4.4",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/architecture-gfe4e13806_1920.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/city-g6dc609ce4_1920.jpg",
        "assets/images/yellow-foot-residential-building-oa-lab_6.jpg",
        "assets/images/mall-g2ad4c8504_1920.jpg",
        "assets/images/nbc-g365201f2a_1920.jpg",
        "assets/images/immeuble.jpg",
      ],
    ),
    BuildingProperty(
      "RENT",
      "Coalescence Buidling",
      "5.000.000",
      "St Louis",
      "31,300",
      "4.6",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/city-g6dc609ce4_1920.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/architecture-gfe4e13806_1920.jpg",
        "assets/images/mall-g2ad4c8504_1920.jpg",
        "assets/images/yellow-foot-residential-building-oa-lab_6.jpg",
        "assets/images/nbc-g365201f2a_1920.jpg",
        "assets/images/immeuble.jpg",
      ],
    ),
    BuildingProperty(
      "RENT",
      "The British Mall",
      "3,100,000",
      "New Jersey",
      "8.743",
      "4.1",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/mall-g2ad4c8504_1920.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/immeuble.jpg",
        "assets/images/architecture-gfe4e13806_1920.jpg",
        "assets/images/city-g6dc609ce4_1920.jpg",
        "assets/images/yellow-foot-residential-building-oa-lab_6.jpg",
        "assets/images/nbc-g365201f2a_1920.jpg",
      ],
    ),
    BuildingProperty(
      "RENT",
      "NBC Queens HQ",
      "4,500.000",
      "Queens",
      "5,100",
      "4.5",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/nbc-g365201f2a_1920.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/immeuble.jpg",
        "assets/images/mall-g2ad4c8504_1920.jpg",
        "assets/images/architecture-gfe4e13806_1920.jpg",
        "assets/images/city-g6dc609ce4_1920.jpg",
        "assets/images/yellow-foot-residential-building-oa-lab_6.jpg",
      ],
    ),
    BuildingProperty(
      "RENT",
      "The Yellow Foot",
      "3,500.000",
      "San Diego",
      "3,100",
      "4.5",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/yellow-foot-residential-building-oa-lab_6.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/immeuble.jpg",
        "assets/images/nbc-g365201f2a_1920.jpg",
        "assets/images/mall-g2ad4c8504_1920.jpg",
        "assets/images/city-g6dc609ce4_1920.jpg",
        "assets/images/architecture-gfe4e13806_1920.jpg",
      ],
    ),
  ];
}
