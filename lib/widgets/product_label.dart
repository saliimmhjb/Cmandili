import 'package:flutter/material.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/data.dart';
import 'package:shopping/models/products.dart';
import 'package:shopping/screens/unavailablescreen.dart';

class ProductLabel extends StatefulWidget {
  final insertProduct prod;
  const ProductLabel({Key? key, required this.prod}) : super(key: key);

  @override
  State<ProductLabel> createState() => _ProductLabelState();
}

class _ProductLabelState extends State<ProductLabel> {
  late final insertProduct prod;
  bool isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: Container(
        height: 290,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.prod.productName,
                  style: Theme.of(context).textTheme.overline!.copyWith(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${(widget.prod.productPrice).toString()}DT',
                  style: Theme.of(context).textTheme.overline!.copyWith(
                    color: secondColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ClipRRect(
                  child: Image.asset(
                    widget.prod.productImage,
                    width: 140,
                    height: 140,
                    fit: BoxFit.fill,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (_) => UnavailbleScreen(),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Text(
                          "Add To Cart",
                          style: Theme.of(context).textTheme.overline!.copyWith(
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0)),
                        primary: secondColor,
                        minimumSize: Size(40, 33),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 36,
                        height: 33,
                        decoration: BoxDecoration(
                          color: darkGreyColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.0),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isFavorited = !isFavorited;
                            });
                          },
                          color: secondColor,
                          icon: Icon(
                            isFavorited ? Icons.favorite : Icons.favorite_border,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
