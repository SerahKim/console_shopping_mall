import 'package:console_shopping_mall/shoppingMall.dart';
import 'package:console_shopping_mall/productList.dart';
import 'dart:io';

void main() {
  Shoppingmall shoppingmall = Shoppingmall();
  Productlist productlist = Productlist(shoppingmall);
  bool keepShopping = true;

  while (keepShopping) {
    print("""
  --------------------------------------------------------------------------------------------------------
  [1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료
  --------------------------------------------------------------------------------------------------------  
  """);

    print('원하는 번호를 입력하세요 -> ');
    String? number = stdin.readLineSync();

    switch (number) {
      case '1':
        shoppingmall.showProducts();
        break;
      case '2':
        shoppingmall.addTocart();
        break;
      case '3':
        productlist.showTotal();
        break;
      case '4':
        keepShopping = false;
        print('이용해 주셔서 감사합니다~ 안녕히 가세요!');
        break;
    }
  }
}
