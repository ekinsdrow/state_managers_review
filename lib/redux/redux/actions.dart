import 'package:state_managers_review/redux/data/models/product.dart';

class FetchProducts {}

class AddProductToCart {
  final Product product;

  AddProductToCart(this.product);
}

class RemoveProductFromCart {
  final Product product;

  RemoveProductFromCart(this.product);
}

class FetchProductsSuccessAction {
  final List<Product> products;

  FetchProductsSuccessAction(this.products);
}
