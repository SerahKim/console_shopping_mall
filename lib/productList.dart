import 'package:console_shopping_mall/shoppingMall.dart';

class Productlist {
  Shoppingmall shoppingmall;
  int? totalPrice;

  Productlist(this.shoppingmall);

  void showTotal() {
    totalPrice = shoppingmall.productList.reduce((prev, next) => prev + next);
    print('장바구니에 $totalPrice원 어치를 담으셨네요!');
  }
}
