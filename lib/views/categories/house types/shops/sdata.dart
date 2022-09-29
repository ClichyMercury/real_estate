class ShopsProperty {
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

  ShopsProperty(
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

List<ShopsProperty> getShopsPropertyList() {
  return <ShopsProperty>[
    ShopsProperty(
      "SALE",
      "A.J Shoes Ltd",
      "500.000",
      "Nashville",
      "46",
      "4.4",
      "Amanda Jayne is an independent retailer of beautiful Italian Shoes and accessories. We offer sizes from 34 – 42, with many half sizes too! Pop",
      "assets/images/545.jpg",
      "assets/images/user6.jpg",
      "amanda Jayne",
      [
        "assets/images/550.jpg",
        "assets/images/589.jpg",
        "assets/images/The-Art-Shop-1024x741.jpg",
        "assets/images/591.jpg",
        "assets/images/shop.jpg",
      ],
    ),
    ShopsProperty(
      "SALE",
      "Cuddle & Cwtch",
      "650.000",
      "Miami",
      "50",
      "4.6",
      "Independent family run Baby and Children’s Boutique.  Stockists of Frugi, Kite, Emile et Rose, Lilly & Sid and many more.  Also gifts and toys.  Super",
      "assets/images/550.jpg",
      "assets/images/user6.jpg",
      "Dalia al-Fackir",
      [
        "assets/images/545.jpg",
        "assets/images/591.jpg",
        "assets/images/589.jpg",
        "assets/images/The-Art-Shop-1024x741.jpgg",
        "assets/images/shop.jpg",
      ],
    ),
    ShopsProperty(
      "SALE",
      "Carpaninis",
      "385.000",
      "New Orleans",
      "85",
      "4.1",
      "Carpaninis is a family run store, selling unique gifts and homeware, specialist wines, spirits and liquers. Artisan food products, plus locally produced products. Bespoke hamper",
      "assets/images/589.jpg",
      "assets/images/user1.jpg",
      "Jeanne Malory",
      [
        "assets/images/shop.jpg",
        "assets/images/545.jpg",
        "assets/images/591.jpg",
        "assets/images/The-Art-Shop-1024x741.jpg",
        "assets/images/589.jpg",
      ],
    ),
    ShopsProperty(
      "SALE",
      "The Art Shop",
      "500.000",
      "Phoenix",
      "100",
      "4.5",
      "Two minutes away from the Chapel. Ground floor shop sells the very best artists’ materials and books. Regular art exhibitions upstairs in a domestic interior.",
      "assets/images/The-Art-Shop-1024x741.jpg",
      "assets/images/user11.jpg",
      "Steve Zemo",
      [
        "assets/images/550.jpg",
        "assets/images/589.jpg",
        "assets/images/545.jpg",
        "assets/images/591.jpg",
        "assets/images/The-Art-Shop-1024x741.jpg",
      ],
    ),
    ShopsProperty(
      "SALE",
      "Abergavenny GC",
      "200.000",
      "New York",
      "150",
      "4.2",
      "Abergavenny Garden Centre ,Over 60 years knowledge and experience of growing in our plant nursery, providing a full range of ornamental and vegetable plants. Our customer service is great.",
      "assets/images/591.jpg",
      "assets/images/user10.jpg",
      "mephisto N'gueda",
      [
        "assets/images/shop.jpg",
        "assets/images/550.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/545.jpg",
        "assets/images/589.jpg",
      ],
    ),
    ShopsProperty(
      "SALE",
      "B.M.C",
      "450.000",
      "Albanni",
      "110",
      "4.0",
      "Black Mountain Fabric is a treasure trove for lovers of high quality patchworking cottons and dressmaking fabrics. We stock designer fabrics, haberdashery and quilting tools,",
      "assets/images/shop.jpg",
      "assets/images/user2.jpg",
      "serge maclenne",
      [
        "assets/images/The-Art-Shop-1024x741.jpg",
        "assets/images/589.jpg",
        "assets/images/591.jpg",
        "assets/images/550.jpg",
        "assets/images/545.jpg",
      ],
    ),
    ShopsProperty(
      "SALE",
      "Labour And Wait",
      "450.000",
      "Detroit",
      "60",
      "4.3",
      "Award winning butchers and delicatessen with bakery kitchen that produces delicious food to go, as well as meals to take home.",
      "assets/images/tomas-anton-escobar-y6rwKaurdkI-unsplash-1.jpg",
      "assets/images/jackman.png",
      "Venance Jackson",
      [
        "assets/images/kitchen.jpg",
        "assets/images/550.jpg",
        "assets/images/The-Art-Shop-1024x741.jpg",
        "assets/images/shop.jpg",
        "aassets/images/545.jpg",
      ],
    ),
  ];
}
