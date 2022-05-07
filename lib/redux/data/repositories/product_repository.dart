import 'package:state_managers_review/redux/data/models/product.dart';

abstract class IProductRepository {
  Future<List<Product>> getProducts();
}

class ProductRepository implements IProductRepository {
  @override
  Future<List<Product>> getProducts() async {
    final products = <Product>[];

    for (var i = 0; i < 100; i++) {
      products.add(
        Product(name: 'Product $i'),
      );
    }

    await Future.delayed(
      const Duration(
        seconds: 1,
      ),
    );

    return products;
  }
}
