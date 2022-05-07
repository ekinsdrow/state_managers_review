import 'package:state_managers_review/redux/data/models/product.dart';

abstract class IProductRepository {
  List<Product> getProducts();
}

class ProductRepository implements IProductRepository {
  @override
  List<Product> getProducts() {
    final products = <Product>[];

    for (var i = 0; i < 100; i++) {
      products.add(
        Product(name: 'Product $i'),
      );
    }

    return products;
  }
}
