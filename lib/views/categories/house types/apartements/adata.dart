class ApartementsProperty {
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

  ApartementsProperty(
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

List<ApartementsProperty> getApartementsPropertyList() {
  return <ApartementsProperty>[
    ApartementsProperty(
      "SALE",
      "The Bulgarian",
      "350.000",
      "San Fransisco",
      "156",
      "4.4",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/TheBulgarian.jpg",
      "assets/images/user1.jpg",
      "M. Gatembide",
      [
        "assets/images/simpleHome.jpg",
        "assets/images/noHome.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    ApartementsProperty(
      "RENT",
      "Take A Break",
      "700",
      "Seattle",
      "98",
      "4.6",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/takeAbreak.png",
      "assets/images/owner.jpg",
      "Lorenzo escobar",
      [
        "assets/images/kitchen.jpg",
        "assets/images/simpleHome.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/noHome.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    ApartementsProperty(
      "RENT",
      "Black Apartement",
      "900",
      "California",
      "100",
      "4.1",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/BlackAppart.png",
      "assets/images/user8.jpg",
      "Emilio Pagani",
      [
        "assets/images/TheBulgarian.jpg",
        "assets/images/noHome.jpg",
        "assets/images/simpleHome.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/takeAbreak.png",
      ],
    ),
    ApartementsProperty(
      "SALE",
      "Optmism Place",
      "450.000",
      "Houston",
      "100",
      "4.5",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/OptimiziseAppart.jpg",
      "assets/images/user9.jpg",
      "Drake Markov",
      [
        "assets/images/takeAbreak.png",
        "assets/images/TheBulgarian.jpg",
        "assets/images/noHome.jpg",
        "assets/images/simpleHome.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    ApartementsProperty(
      "SALE",
      "New Home",
      "200.000",
      "New York",
      "100",
      "4.2",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/new_home.jpg",
      "assets/images/user10.jpg",
      "henry Gucci",
      [
        "assets/images/kitchen.jpg",
        "assets/images/takeAbreak.png",
        "assets/images/TheBulgarian.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/simpleHome.jpg",
      ],
    ),
    ApartementsProperty(
      "SALE",
      "North Apartement",
      "500.000",
      "Florida",
      "700",
      "4.0",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/noHome.jpg",
      "assets/images/user4.jpg",
      "Emilie raja",
      [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/takeAbreak.png",
        "assets/images/TheBulgarian.jpg",
        "assets/images/living_room.jpg",
      ],
    ),
    ApartementsProperty(
      "RENT",
      "The Simple",
      "1000",
      "Detroit",
      "600",
      "4.3",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/simpleHome.jpg",
      "assets/images/user11.jpg",
      "Richard Gates",
      [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/takeAbreak.png",
        "assets/images/TheBulgarian.jpg",
      ],
    ),
  ];
}
