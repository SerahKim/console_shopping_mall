import 'package:console_shopping_mall/shoppingMall.dart';

class Productlist {
  Shoppingmall shoppingmall;

  Productlist(this.shoppingmall);

  void showTotal() {
    String cartList = shoppingmall.productList.join();
    int? totalPrice =
        shoppingmall.productPrice.reduce((prev, next) => prev + next);
    if (shoppingmall.productPrice.isEmpty) {
      print('장바구니에 담긴 상품이 없습니다');
    } else {
      print('장바구니에 $cartList가 담겨있네요. 총 $totalPrice입니다.');
    }
  }

  void initCart() {
    if (shoppingmall.productPrice.isEmpty) {
      print('이미 장바구니가 비어있습니다');
    } else {
      shoppingmall.productPrice.clear();
      print('장바구니를 초기화합니다.');
    }
  }
}
