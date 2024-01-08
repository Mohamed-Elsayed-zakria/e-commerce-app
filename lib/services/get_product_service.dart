import 'package:http/http.dart' as http;
import '../models/product_model.dart';
import 'dart:convert';



class GetAllProduct {
 static Future<List<ProductModel>> getAllProduct() async {
    String baseUrl = "https://fakestoreapi.com";

    http.Response response = await http.get(Uri.parse('$baseUrl/products'));

    List<ProductModel> productList = [];

    List<dynamic> data = jsonDecode(response.body);

    for (var element in data) {
      productList.add(ProductModel.fromJson(element));
    }

    return productList;
  }
}
