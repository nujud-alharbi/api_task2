
import 'package:api_task2/logic/service/product_service.dart';
import 'package:api_task2/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/api_string.dart';

class ProductController extends GetxController {
  final apiService = ProductService();
  var baseUrl = ApiString.baseUrl;
  bool isSort = false;
  bool sortProduct() {
    isSort = !isSort;
    return isSort;
  }

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  final Map<String, String> headers = {
    'Access-Control-Allow-Origin': '*',
    'Content-type': 'application/json',
    'Accept': '*/*',
  };
var typeCategory;

  refreshData() {
    getAllData();
    update();
  }

  @override
  onInit() async {
    super.onInit();
    await getAllData();
    // await getAllDataTypeCategory();


  }

  clearController() {
    // titleController.clear();
    // descriptionController.clear();
  }

  Future<List<Product>> getAllData() async {
    List todoList =
    await apiService.getAllData(url: '$baseUrl/products', headers: headers);
    return todoList.map((todo) => Product.fromJson(todo)).toList();
  }

  Future<List<Product>> getLimitData() async {
    List todoList =
    await apiService.getAllData(url: '$baseUrl/products?limit=5', headers: headers);
    return todoList.map((todo) => Product.fromJson(todo)).toList();
  }


  Future<List<Product>> getAllDataTypeCategory() async {
    List todoList =
    await apiService.getAllData(url: '$baseUrl/products/category/$typeCategory', headers: headers);
    return todoList.map((todo) => Product.fromJson(todo)).toList();
  }


  Future<List<Product>> getDataSort() async {
    List todoList =
    await apiService.getAllData(url: '$baseUrl/products?sort=desc', headers: headers);
    return todoList.map((todo) => Product.fromJson(todo)).toList();
  }


  postData(Product model) async {
    await apiService.postData(
      url: '$baseUrl/products',
      body: {
        'title': model.title,
        'description': model.description,
        'price': model.price,
        "id": model.id,
        'image': model.image
      },
      headers: headers,
    );
  }

  updateData(Product model) async {
    await apiService.updateData(
      url: '$baseUrl/products',
      id: "${model.id}",
      body: {
        'title': model.title,
        'description': model.description,
        // 'price': model.price,
        // "id": model.id,
        // 'image': model.image
      },
      headers: headers,
    );

  }

  deleteData(String id) async {
    await apiService.deleteData(url: '$baseUrl/products', id: id);
  }
}
