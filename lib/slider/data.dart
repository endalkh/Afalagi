import 'package:addisaba_app/pages/utilities/catagories.dart';

class HomeCardData {
  String title;
  String pic;

  HomeCardData({this.title, this.pic});
}

class DataListBuilder {
  List<HomeCardData> cardList = new List<HomeCardData>();
  List<HomeCardData> emptyList = new List<HomeCardData>();
  HomeCardData card1 = new HomeCardData(
    title: 'Salad',
    pic: category[0],
  );
  HomeCardData card2 = new HomeCardData(
    title: 'Health',
    pic: category[0],
  );
  HomeCardData card3 = new HomeCardData(
    title: 'Work',
    pic: category[0],
  );
  HomeCardData card4 = new HomeCardData(
    title: 'Shopping',
    pic: category[0],
  );



  DataListBuilder() {
    cardList.add(card1);
    cardList.add(card2);
    cardList.add(card3);
    cardList.add(card4);


  }
}