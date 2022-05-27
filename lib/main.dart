import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String datetime =  DateFormat("dd MMMM, yyyy").format(DateTime.now()).toString();
    return MaterialApp(
        
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 38, 38, 38),
            appBar: AppBar(
              shadowColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              centerTitle: true,
              title: Text(
                datetime,
                style: TextStyle(
                    fontFamily: "ProductSans", fontWeight: FontWeight.w200),
              ),
            ),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SizedBox(
                    height: 40,
                  ),

                  Center(
                    child: InkWell(
                        child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 25),
                            padding: EdgeInsets.all(10),
                            height: 75,
                            child: Center(
                                child: Text("Study",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "ProductSans",
                                        color: Colors.white,
                                        fontSize: 30))),
                            decoration: BoxDecoration(
                              boxShadow: const [BoxShadow(color: Color.fromARGB(255, 216, 52, 40),blurRadius: 10,offset: Offset(0.0,8.0))],
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 255, 62, 48),
                            )),
                        onTap:  () async => {await launchUrl(Uri.parse("https://paperfactorymnnit.pythonanywhere.com/"))},),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                      child: InkWell(
                    child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                        padding: EdgeInsets.all(10),
                        height: 75,
                        child: Center(
                            child: Text("Health",
                                style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "ProductSans",
                                    color: Colors.white,
                                    fontSize: 30))),
                        decoration: BoxDecoration(
                          boxShadow: const [BoxShadow(color: Color.fromARGB(255, 201, 148, 33),blurRadius: 10,offset: Offset(0.0,8.0))],
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 247, 181, 41),
                        )),
                    onTap:  () async => {await launchUrl(Uri.parse("https://www.youtube.com/c/OliverSjostrom/featured"))}
                  )),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                      child: InkWell(
                    child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                        padding: EdgeInsets.all(10),
                        height: 75,
                        child: Center(
                            child: Text("Entertainment",
                                style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "ProductSans",
                                    color: Colors.white,
                                    fontSize: 30))),
                        decoration: BoxDecoration(
                          boxShadow: const [BoxShadow(color: Color.fromARGB(255, 20, 135, 71),blurRadius: 10,offset: Offset(0.0,8.0))],
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 23, 156, 82),
                        )),
                    onTap:  () async => {await launchUrl(Uri.parse("https://fmovies.to/home"))}
                  )),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                      child: InkWell(
                    child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                        padding: EdgeInsets.all(10),
                        height: 75,
                        child: Center(
                            child: Text("Personal Mastery",
                                style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "ProductSans",
                                    color: Colors.white,
                                    fontSize: 30))),
                        decoration: BoxDecoration(
                          boxShadow: const [BoxShadow(color: Color.fromARGB(255, 19, 89, 200),blurRadius: 10,offset: Offset(0.0,8.0))],
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 23, 107, 239),
                        )),
                    onTap:  () async => {await launchUrl(Uri.parse("https://www.pdfdrive.com/"))}
                  )),
                  SizedBox(
                    height: 40,
                  ),
                  Row(children: [
                    Center(
                        child: InkWell(
                      child: Container(
                          height: 130,
                          width: 130,
                          margin:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                          padding: EdgeInsets.all(10),
                          child: Center(
                              child: Text("Dates",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "ProductSans",
                                      color: Colors.white,
                                      fontSize: 30))),
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(color: Color.fromARGB(255, 99, 119, 129),blurRadius: 10,offset: Offset(0.0,8.0))],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey[400],
                          )),
                      onTap: () async {
                        await LaunchApp.openApp(
                          androidPackageName: 'com.google.android.calendar',
                          iosUrlScheme: 'pulsesecure://',
                          appStoreLink:
                              'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
                          // openStore: false
                        );
                      },
                    )),
                    Center(
                        child: InkWell(
                      child: Container(
                          height: 130,
                          width: 130,
                          margin:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                          padding: EdgeInsets.all(10),
                          child: Center(
                              child: Text("To Do",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "ProductSans",
                                      color: Colors.white,
                                      fontSize: 30))),
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(color: Color.fromARGB(255, 101, 113, 168),blurRadius: 10,offset: Offset(0.0,8.0))],
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFF7986CB),
                          )),
                      onTap: () async {
                        await LaunchApp.openApp(
                          androidPackageName: 'com.google.android.apps.tasks',
                          iosUrlScheme: 'pulsesecure://',
                          appStoreLink:
                              'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
                          // openStore: false
                        );
                      },
                    ))
                  ]),
                ])));
  }
}
