import 'package:artofflutter_two/ImageSearchApp/services/api_services.dart';
import 'package:flutter/material.dart';

class ImageSearchHomeScreen extends StatefulWidget {
  ImageSearchHomeScreen({Key? key}) : super(key: key);

  @override
  State<ImageSearchHomeScreen> createState() => _ImageSearchHomeScreenState();
}

class _ImageSearchHomeScreenState extends State<ImageSearchHomeScreen> {
  List<String> data_to_show = [];
  @override
  Widget build(BuildContext context) {
    // print("Home Page Data ${Api_Services.instance().getDogList()}");
    return Scaffold(
        appBar: AppBar(
          title: Text("ImageSearch"),
        ),
        body: Column(
          children: [
            TextFormField(
              onChanged: (String value) {
                List<String>? data_from_net =
                    Api_Services.instance().available.dogNames;

                List<String>? search_result = data_from_net
                    .where((element) => element
                        .toLowerCase()
                        .replaceAll(" ", "")
                        .contains(value.toLowerCase().replaceAll(" ", "")))
                    .toList();

                if (search_result?.isNotEmpty == true) {
                  data_to_show.clear();
                  data_to_show.addAll(search_result!);

                  setState(() {});
                }
                 else {
                  data_to_show.clear();
                  setState(() {});
                }

                print(data_to_show);
              },
            ),
            Container(
              height: 500,
              child: ListView(
                children: [for (String a in data_to_show) Text("$a")],
              ),
            )
          ],
        ));
  }
}
