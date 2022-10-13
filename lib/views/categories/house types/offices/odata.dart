class OfficesProperty {
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

  OfficesProperty(
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

List<OfficesProperty> getOfficesPropertyList() {
  return <OfficesProperty>[
    OfficesProperty(
      "RENT",
      "The Mandalorian",
      "75.000",
      "Atlanta",
      "2,150",
      "4.4",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/theMandalorian.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/bureau.jpg",
        "assets/images/JCDecaux.jpg",
        "assets/images/philipsTower.jpg",
        "assets/images/theCrown.jpg",
        "assets/images/appleCampus.jpg",
      ],
    ),
    OfficesProperty(
      "RENT",
      "Apple Campus",
      "100.000",
      "Cuepertino",
      "2,000",
      "4.6",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/appleCampus.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/theMandalorian.jpg",
        "assets/images/bureau.jpg",
        "assets/images/theCrown.jpg",
        "assets/images/JCDecaux.jpg",
        "assets/images/empirestateBulding.jpg",
      ],
    ),
    OfficesProperty(
      "RENT",
      "Empire state Building",
      "80.000",
      "New York",
      "800",
      "4.1",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/empirestateBulding.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/philipsTower.jpg",
        "assets/images/theCrown.jpg",
        "assets/images/bureau.jpg",
        "assets/images/JCDecaux.jpg",
        "assets/images/appleCampus.jpg",
      ],
    ),
    OfficesProperty(
      "RENT",
      "JCD WorkSpaces",
      "150.000",
      "Boston",
      "650",
      "4.5",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/JCDecaux.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/theCrown.jpg",
        "assets/images/appleCampus.jpg",
        "assets/images/philipsTower.jpg",
        "assets/images/bureau.jpg",
        "assets/images/empirestateBulding.jpg",
      ],
    ),
    OfficesProperty(
      "RENT",
      "Sayath Tower",
      "95.000",
      "Dallas",
      "800",
      "4.2",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/philipsTower.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/kitchen.jpg",
        "assets/images/appleCampus.jpg",
        "assets/images/theMandalorian.jpg",
        "assets/images/theCrown.jpg",
        "assets/images/bureau.jpg",
      ],
    ),
    OfficesProperty(
      "RENT",
      "The Crow WorkSpace",
      "150.000",
      "Passadenna",
      "750",
      "4.0",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/theCrown.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/kitchen.jpg",
        "assets/images/bureau.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/philipsTower.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    OfficesProperty(
      "RENT",
      "Trump Tower",
      "200.000",
      "New York",
      "700",
      "4.3",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/trumpTower.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/trumpTower.jpg",
        "assets/images/bureau.jpg",
        "assets/images/philipsTower.jpg",
        "assets/images/theMandalorian.jpg",
        "assets/images/theCrown.jpg",
      ],
    ),
    OfficesProperty(
      "RENT",
      "World Trade Center",
      "175.000",
      "New York",
      "1000",
      "4.4",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/worldtradecenter.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/bureau.jpg",
        "assets/images/theMandalorian.jpg",
        "assets/images/appleCampus.jpg",
        "assets/images/trumpTower.jpg",
        "assets/images/philipsTower.jpg",
      ],
    ),
  ];
}
