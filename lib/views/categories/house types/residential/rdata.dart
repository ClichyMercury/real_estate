class ResidentialHomesProperty {
  String label;
  String name;
  String price;
  String location;
  String sqm;
  String review;
  String description;
  String frontImage;
  String ownerImage;
  String ownerName;
  List<String> images;

  ResidentialHomesProperty(
      this.label,
      this.name,
      this.price,
      this.location,
      this.sqm,
      this.review,
      this.description,
      this.frontImage,
      this.ownerImage,
      this.ownerName,
      this.images);
}

List<ResidentialHomesProperty> getResidentialHomesPropertyList() {
  return <ResidentialHomesProperty>[
  
    ResidentialHomesProperty(
      "SALE",
      "The Vintage",
      "3.500.000",
      "Dener",
      "3,300",
      "4.6",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/oHouse0.jpg",
      "assets/images/user11.jpg",
      "Mickael Remy",
      [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    ResidentialHomesProperty(
      "RENT",
      "Into The Yellow",
      "3.100.000",
      "South Dakota ",
      "1,890",
      "4.1",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/oHouse2.jpg",
      "assets/images/owner.jpg",
      "Jason McFly",
      [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    ResidentialHomesProperty(
      "SALE",
      "Mountain View",
      "5.500.000",
      "Nebraska",
      "1000",
      "4.5",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/oHouse3.jpg",
      "assets/images/user6.jpg",
      "Monica Belluci",
      [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    ResidentialHomesProperty(
      "SALE",
      "Dracula Place",
      "5,200.000",
      "Atlanta",
      "3,100",
      "4.2",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/oHouse4.jpg",
      "assets/images/user9.jpg",
      "Alberto Del Rio",
      [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
  ];
}
