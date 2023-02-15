import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pakiza_dyeing_inventory/app/modules/details/views/details_view.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class UserDashBoard extends StatelessWidget {
  UserDashBoard({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  var mydata = [
    {
      "catName": "Total Party",
      "catValue": "257",
      "colorValue": "color-1",
      "imagepath": "assets/icons/bdtk.png"
    },
    {
      "catName": "Bill Amount (tk)",
      "catValue": "4,54,345,66",
      "colorValue": "color-2",
      "imagepath": "assets/icons/Closing.png"
    },
    {
      "catName": "Collection (tk)",
      "catValue": "34,543,235",
      "colorValue": "color-3",
      "imagepath": "assets/icons/Customer.png"
    },
    {
      "catName": "Closing (tk)",
      "catValue": "2,23,45,355",
      "colorValue": "color-4",
      "imagepath": "assets/icons/icon_NoPrice.png"
    },
    {
      "catName": "Finished Yards",
      "catValue": "32422",
      "colorValue": "color-5",
      "imagepath": "assets/icons/icon_Defects.png"
    },
    {
      "catName": "With Charged (Yds/Pcs)",
      "catValue": "25234347",
      "colorValue": "color-6",
      "imagepath": "assets/icons/icon_Price.png"
    },
    {
      "catName": "Without Charged (Yds/Pcs)",
      "catValue": "34,573",
      "colorValue": "color-7",
      "imagepath": "assets/icons/icon_StockDlv.png"
    },
    {
      "catName": "Defect (Yds/Pcs)",
      "catValue": "76757",
      "colorValue": "color-8",
      "imagepath": "assets/icons/Money_Collection.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        key: scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "Pakiza Dyeing & Printing lnd. Ltd",
            style: GoogleFonts.oswald(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.sort,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              if (scaffoldKey.currentState!.isDrawerOpen) {
                scaffoldKey.currentState!.closeDrawer();
                //close drawer, if drawer is open
              } else {
                scaffoldKey.currentState!.openDrawer();
                //open drawer, if drawer is closed
              }
            },
          ),
        ),
        drawer: Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.200,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff3498db),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/profile.png"),
                            radius: 45,
                          ),
                          Text(
                            "MD Mahmudul Hasan",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Pakiza Dyeing & Printing lnd. Ltd.",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          DigitalClock(
                            secondDigitTextStyle: GoogleFonts.oswald(
                              color: Colors.white,
                            ),
                            hourMinuteDigitTextStyle: GoogleFonts.oswald(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                            colon: Icon(Icons.ac_unit, size: 12),
                            colonDecoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.010,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "All Categories :",
                      style: GoogleFonts.oswald(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.550,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.red,
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => DetailsView());
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          width: screenWidth,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              // color: Colors.white,

                              color: mydata[index]["colorValue"] == "color-1"
                                  ? Color(0xffF2BCBA)
                                  : mydata[index]["colorValue"] == "color-2"
                                      ? Color(0xffF6AE5A)
                                      : mydata[index]["colorValue"] == "color-3"
                                          ? Color(0xffE0F2F2)
                                          : mydata[index]["colorValue"] ==
                                                  "color-4"
                                              ? Color(0xffD9BEE7)
                                              : mydata[index]["colorValue"] ==
                                                      "color-5"
                                                  ? Color(0xffFBE5CD)
                                                  : mydata[index]
                                                              ["colorValue"] ==
                                                          "color-6"
                                                      ? Color(0xff1DEFE5)
                                                      : mydata[index][
                                                                  "colorValue"] ==
                                                              "color-7"
                                                          ? Color(0xff6F5F5F)
                                                          : mydata[index][
                                                                      "colorValue"] ==
                                                                  "color-8"
                                                              ? Color(
                                                                  0xffFFF2CD)
                                                              : Colors.red),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        mydata[index]["catName"].toString(),
                                        style: GoogleFonts.roboto(
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        mydata[index]["catValue"].toString(),
                                        style: GoogleFonts.roboto(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(
                                      mydata[index]["imagepath"]!,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
