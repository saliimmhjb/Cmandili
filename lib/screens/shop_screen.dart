import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/data.dart';
import 'package:shopping/models/products.dart';
import 'package:shopping/screens/about_app.dart';
import 'package:shopping/widgets/product_label.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 90,
        leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(
              Icons.arrow_back_ios,
              color: secondColor,
            )),
        title: Row(
          children: [
            Icon(
              Icons.shopping_cart,
              color: secondColor,
              size: 27,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_) => AboutCmandili(),
                ),
              ),
              child: Text(
                "Cmandili",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 19, 15, 23),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image(
                image: AssetImage("assets/profile.jpg"),
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            children: [
              ...products.map((e) => Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: ProductLabel(prod: e),
                  ))
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0.1),
                      Colors.white,
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
