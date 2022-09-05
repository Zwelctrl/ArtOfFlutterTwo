import 'package:artofflutter_two/ImageSearchApp/models/availabledogs.dart';
import 'package:artofflutter_two/ImageSearchApp/services/api_services.dart';
import 'package:artofflutter_two/ImageSearchApp/view/image_search_home.dart';
import 'package:artofflutter_two/courseWorks/drawer.dart';
import 'package:artofflutter_two/courseWorks/image_network.dart';
import 'package:artofflutter_two/courseWorks/image_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  Api_Services.instance();
  // Api_Services.getData('https://dog.ceo/api/breeds/image/random');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //onGeneratedRoutes
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/img_search",
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => DrawerExp());
      },
      onGenerateRoute: (setting) {
        switch (setting.name) {
          // case "/":
          //   return MaterialPageRoute(builder: (context) => ImageProviderExp());

          case "/drawer":
            return MaterialPageRoute(builder: (context) => DrawerExp());

          case "/img_search":
            return MaterialPageRoute(
                builder: (context) => ImageSearchHomeScreen());
        }
      },

      //ongenerated initial routes
      // onGenerateInitialRoutes: (initialRoute) {
      //   return [MaterialPageRoute(builder: (context) => ImageNetwork())];
      // },
    );
  }
}


// 1:01:41