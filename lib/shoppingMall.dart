import 'dart:io';

class Shoppingmall {
  Map<String, int> productsInfo = {
    '셔츠': 45000,
    '원피스': 30000,
    '반팔티': 35000,
    '반바지': 38000,
    '양말': 5000
  };
  List<int> productList = [];
  String? productName;
  String? productCount;

  void showProducts() {
    for (var product in productsInfo.keys) {
      print('$product / ${productsInfo[product]}');
    }
  }

  void addTocart() {
    print('상품의 이름을 입력하세요 -> ');
    productName = stdin.readLineSync();

    print('상품의 개수를 입력하세요 -> ');
    productCount = stdin.readLineSync();

    if (productsInfo.keys.contains(productName)) {
      //상품이 있을 떄
      try {
        int parseCount = int.parse(productCount!);
        if (parseCount > 0) {
          //상품의 개수가 1 이상, 숫자 형태일 떄
          print('장바구니에 상품이 담겼어요!');
          productList.add(productsInfo[productName]! * parseCount);
        } else {
          //상품의 개수가 0이하의 수일 때
          print('입력값이 올바르지 않아요!');
        }
      } catch (e) {
        //상품의 개수를 숫자가 아닌 형태로 입력했을 때
        print('입력값이 올바르지 않아요!:$e');
      }
    } else {
      print('입력값이 올바르지 않아요!');
    }
  }
}
