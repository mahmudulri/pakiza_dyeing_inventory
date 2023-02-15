import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey,
        title: Text("Bill Amount by Party"),
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        // color: Colors.yellow,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                width: screenWidth,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffD9BEE7),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Party Name :",
                                    style: GoogleFonts.oswald(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "AL HAMRA TEXTILE",
                                    style: GoogleFonts.oswald(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Party Group :",
                                    style: GoogleFonts.oswald(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "DEAL PARTY",
                                    style: GoogleFonts.oswald(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Divider(
                                thickness: 1,
                                color: Colors.black,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Bill Amount :",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "12,345,3345 tk",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(
                  left: 50,
                ),
                color: Colors.grey,
                child: Row(
                  children: [
                    Text(
                      "Total Bill Amount : 23,45,2234 tk",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
