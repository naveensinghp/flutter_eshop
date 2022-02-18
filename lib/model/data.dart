
class Data {
  final String homePageFirstTitle;
  final String homePageSecondTitle;
  final String homepageImagepath;

  Data({
    required this.homePageFirstTitle, 
    required this.homePageSecondTitle,
    required this.homepageImagepath
    });

}

final Data appData = Data(
  homePageFirstTitle: 'Make new era of',
  homePageSecondTitle: 'Natural Beauty',
  homepageImagepath : 'assets/image/one.jpg',

);


class ProductData {
  final String productname,productSubtitle;
  ProductData({
    required this.productname,
    required this.productSubtitle
  });

  final ProductData powder = ProductData(
      productname: 'Test Data 1',
      productSubtitle: 'Subtitle');

}
