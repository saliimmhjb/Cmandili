import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/data.dart';
import 'package:shopping/screens/about_app.dart';
import 'package:shopping/screens/shop_screen.dart';
import 'package:shopping/widgets/product_label.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 90,
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
      body:       Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Hi, Salim Mahjoub",
                style: Theme.of(context).textTheme.overline!.copyWith(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              color: secondColor,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: EdgeInsets.fromLTRB(5, 13, 5, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ramadan Special with\nCmandili",
                            style: Theme.of(context).textTheme.overline!.copyWith(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Discount on food products of more\nthan 60%",
                            style: Theme.of(context).textTheme.overline!.copyWith(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (_) => ShopScreen(),
                              ),
                            ),
                            child: Text(
                              "Discover more",
                              style:
                              Theme.of(context).textTheme.overline!.copyWith(
                                fontSize: 9,
                                color: secondColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                              primary: Colors.white,
                              minimumSize: Size(25, 27),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/ad.png",
                          width: 140,
                          height: 140,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 18, 0, 0),
              child: Text(
                "Categories",
                style: Theme.of(context).textTheme.overline!.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_) => ShopScreen(),
                ),
              ),
              child: Card(
                color: Colors.white,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      child: ListTile(
                        title:Text(
                          "Electronics",
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                          ),
                        ),
                        leading: Icon(Icons.devices),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title:Text(
                          "Fashion",
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                          ),
                        ),
                        leading: Icon(Icons.checkroom),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title:Text(
                          "Food & Beverages",
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                          ),
                        ),
                        leading: Icon(Icons.restaurant_menu),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title:Text(
                          "Health & Wellness",
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                          ),
                        ),
                        leading: Icon(Icons.health_and_safety),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      child: ListTile(
                        title:Text(
                          "Pet Supplies",
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                          ),
                        ),
                        leading: Icon(Icons.pets),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(), // Spacer
            ),
            Center(
              child: Text("©Cmandili | Made By Salim Mahjoub", style: Theme.of(context).textTheme.overline!.copyWith(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),),
            ),

          ],
        ),
      ),
    );

  }
}
