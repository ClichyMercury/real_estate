class LandsProperty {
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

  LandsProperty(
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

List<LandsProperty> getLandsPropertyList() {
  return <LandsProperty>[
    LandsProperty(
      "SALE",
      "Celeste Park",
      "5.000.000",
      "Sprigfield",
      "5,300",
      "4.6",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/terrain-a-construire.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/iStock-1148812518-768x436.jpg",
        "assets/images/61435100eccc228c2bfaeda1-1631801663-800x500.jpg",
        "assets/images/yellow-foot-residential-building-oa-lab_6.jpg",
        "assets/images/nbc-g365201f2a_1920.jpg",
        "assets/images/immeuble.jpg",
      ],
    ),
    LandsProperty(
      "SALE",
      "iStock Lands",
      "3.100.000",
      "Dallas",
      "1.743",
      "4.1",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/iStock-1148812518-768x436.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/terrain-a-construire.jpg",
        "assets/images/61435100eccc228c2bfaeda1-1631801663-800x500.jpg",
        "assets/images/city-g6dc609ce4_1920.jpg",
        "assets/images/yellow-foot-residential-building-oa-lab_6.jpg",
        "assets/images/nbc-g365201f2a_1920.jpg",
      ],
    ),
    LandsProperty(
      "SALE",
      "Crezalide Place",
      "6,500.000",
      "Queens",
      "6,100",
      "4.5",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/61435100eccc228c2bfaeda1-1631801663-800x500.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/terrain-a-construire.jpg",
        "assets/images/iStock-1148812518-768x436.jpg",
        "assets/images/architecture-gfe4e13806_1920.jpg",
        "assets/images/city-g6dc609ce4_1920.jpg",
        "assets/images/yellow-foot-residential-building-oa-lab_6.jpg",
      ],
    ),
    LandsProperty(
      "SALE",
      "Izi by EDF",
      "3,500.000",
      "Honnolulu",
      "2,160",
      "4.5",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/Pourquoi-acheter-un-terrain-pour-construire-sa-maison-.jpg",
      "assets/images/logo_size.png",
      [
        "assets/images/iStock-1148812518-768x436.jpg",
        "assets/images/terrain-a-construire.jpg",
        "assets/images/61435100eccc228c2bfaeda1-1631801663-800x500.jpg",
        "assets/images/city-g6dc609ce4_1920.jpg",
        "assets/images/architecture-gfe4e13806_1920.jpg",
      ],
    ),
  ];
}
