import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/constants.dart';

class AboutCmandili extends StatelessWidget {
  const AboutCmandili({super.key});

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
            Text(
              "Cmandili",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontWeight: FontWeight.bold),
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
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/profile.jpg"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Salim Mahjoub",
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                  Text(
                    'Developer',
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  Column(
                    children: [
                      Card(
                        child: ListTile(
                          title:Text(
                            "Saliim Mhjb",
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.0,
                            ),
                          ),
                          leading: Icon(FontAwesomeIcons.facebook),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title:Text(
                            "x.saliim",
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.0,
                            ),
                          ),
                          leading: Icon(FontAwesomeIcons.instagram),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title:Text(
                            "Salim Mahjoub",
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.0,
                            ),
                          ),
                          leading: Icon(FontAwesomeIcons.linkedin),
                        ),
                      ),
                    ],
                  ),

                  Expanded(
                    child: SizedBox(), // Spacer
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        shadowColor: Colors.transparent,
                        color: Colors.white,
                        elevation: 0,
                        child: ListTile(
                          title: Text(
                            "What is Cmandili?",
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.0,
                            ),
                          ),
                          leading: Icon(Icons.info),
                          subtitle: Text(
                          "Cmandili  is a Tunisian app for buying electronics, clothes, food, health products, pet supplies, and more. It's user-friendly, secure, and offers fast delivery, making it popular for online shopping in Tunisia.",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 8,
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 0.0,
                            ),
                          ),
                        )
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
