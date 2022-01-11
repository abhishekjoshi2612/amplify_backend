import 'package:amplified_todo/features/data/models/data_model.dart';
import 'package:amplified_todo/features/data/models/shop_models.dart';

class FakeRepository {
  static List<DataModel> data = [
    DataModel(
        name: "Shop 1",
        products: ["S1p1", "S1P2", "S1P3"],
        description:
            "I know what you're thinking!! wait for it there is something",
        forwardCount: "13.12k",
        likesCount: "24.4k",
        messagesCount: "110.3k",
        musicName: "Music name is here",
        tags: "#mindreader, #magician #magictrick",
        profileUrl: "assets/profile1.jpg"),
    DataModel(
      name: "Shop2",
      products: ["S2p1", "S2P2", "S2P3"],
      description:
          "I know what you're thinking!! wait for it there is something",
      forwardCount: "3.12k",
      likesCount: "44.4k",
      messagesCount: "10.3k",
      musicName: "Flutter fun - original sounds - ",
      tags: "#fun #flutter #ui #openSource,",
      profileUrl: "assets/profile2.jpeg",
    ),
    DataModel(
        name: "Shop3",
        products: ["S3p1", "S3P2", "S3P3"],
        description:
            "I know what you're thinking!! wait for it there is something",
        forwardCount: "13.12k",
        likesCount: "24.4k",
        messagesCount: "110.3k",
        musicName: "Music name is here riyaz-xyz music name",
        tags: "#greenscreen, #magician #magictrick",
        profileUrl: "assets/profile3.jpeg"),
  ];

  //static List<String> dataList = ["60s", "15s", "Templates"];
  static List<String> imageData = [
    "https://static.vecteezy.com/system/resources/previews/000/523/046/non_2x/vector-mobile-app-development-concept.jpg",
    "https://www.yourteaminindia.com/blog/wp-content/uploads/2020/06/Online-Exclusive-3.jpg",
  ];
  static List<String> assetData = [
    "assets/profile1.jpg",
    "assets/profile2.jpeg",
    "assets/profile3.jpeg",
    "assets/profile1.jpg",
    "assets/profile2.jpeg",
    "assets/profile3.jpeg",
    "assets/profile1.jpg",
    "assets/profile2.jpeg",
    "assets/profile3.jpeg",
  ];
  static List<String> imageData2 = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
}

class FakeRepository2 {
  static List<Shop_Models> data = [
    Shop_Models(
        id: "1",
        shop_name: "Shop1",
        address: "Address1",
        shop_preview_video: "assets/video1.mp4",
        product_items: [
          Product_Item(name: "S1Item1", product: "S1product1", price: 250),
          Product_Item(name: "S1Item2", product: "S1product2", price: 300),
          Product_Item(name: "S1Item3", product: "S1product3", price: 450)
        ]),
    Shop_Models(
        id: "2",
        shop_name: "Shop2",
        address: "Address2",
        shop_preview_video: "assets/video2.mp4",
        product_items: [
          Product_Item(name: "S2Item1", product: "S2product1", price: 250),
          Product_Item(name: "S2Item2", product: "S2product2", price: 300),
          Product_Item(name: "S2Item3", product: "S2product3", price: 450)
        ]),
    Shop_Models(
        id: "3",
        shop_name: "Shop3",
        address: "Address3",
        shop_preview_video: "assets/video3.mp4",
        product_items: [
          Product_Item(name: "S3Item1", product: "S3product1", price: 250),
          Product_Item(name: "S3Item2", product: "S3product2", price: 300),
          Product_Item(name: "S3Item3", product: "S3product3", price: 450)
        ]),
  ];
}
