import 'package:flutter/material.dart';

class insertProduct {
  final String productName;
  final String productDesc;
  final String productType;
  final String productImage;
  final double productPrice;
  final double productNewPrice;
  final bool productDisponiblty;

  insertProduct({required this.productName, required this.productDesc,required this.productType,required this.productImage,
      required this.productPrice, this.productNewPrice = 0, this.productDisponiblty = true});
}
