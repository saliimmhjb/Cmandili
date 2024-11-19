import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/screens/about_app.dart';

class UnavailbleScreen extends StatelessWidget {
  const UnavailbleScreen({super.key});

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
      body: Padding(
        padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
        child: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: Center(
            child: Text("This feature is not available right now."),
          ),
        ),
      ),
    );
  }
}
