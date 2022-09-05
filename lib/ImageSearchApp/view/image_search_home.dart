import 'package:artofflutter_two/ImageSearchApp/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:starlight_type_ahead/starlight_type_ahead.dart';

class ImageSearchHomeScreen extends StatefulWidget {
  ImageSearchHomeScreen({Key? key}) : super(key: key);

  @override
  State<ImageSearchHomeScreen> createState() => _ImageSearchHomeScreenState();
}

class _ImageSearchHomeScreenState extends State<ImageSearchHomeScreen> {
  List<String> data = ['Mg Mg'];
  TextEditingController starlight_text_ctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // print("Home Page Data ${Api_Services.instance().getDogList()}");
    return Scaffold(
        appBar: AppBar(
          title: Text("ImageSearch"),
        ),
        body: SizedBox(
          height: 400,
          child: Column(
            children: [
              StarlightTypeAhead(
                  controller: starlight_text_ctrl,
                  data: Api_Services.instance().available?.dogNames,
                  // data: data,
                  width: MediaQuery.of(context).size.width,
                  height: 800,
                  itemHeight: 50,
                  itemBuilder: (e) {
                    return Container(
                      child: Text("$e"),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    );
                  })
            ],
          ),
        ));
  }
}


/**
 * // TextFormField(
            //   onChanged: (String value) {
            //     List<String>? data_from_net =
            //         Api_Services.instance().available.dogNames;

            //     if (search_result.isNotEmpty == true) {
            //       data_to_show.clear();
            //       data_to_show.addAll(search_result);

            //       setState(() {});
            //     }
            //      else {
            //       data_to_show.clear();
            //       setState(() {});
            //     }

            //     print(data_to_show);
            //   },
            // ),
            // Container(
            //   height: 500,
            //   child: ListView(
            //     children: [for (String a in data_to_show) Text("$a")],
            //   ),
            // )
 */