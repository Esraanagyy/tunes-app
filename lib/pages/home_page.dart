import 'package:flutter/material.dart';
import 'package:tunes_player_app/widgets/item_widget.dart';

import '../models/item_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Model> itemModel = [
    Model(color: const Color(0xffF44336), sound: "note1.wav"),
    Model(color: const Color(0xffF89800), sound: "note2.wav"),
    Model(color: const Color(0xffFEEB3B), sound: "note3.wav"),
    Model(color: const Color(0xff4CAF50), sound: "note4.wav"),
    Model(color: const Color(0xff2F9688), sound: "note5.wav"),
    Model(color: const Color(0xff2896F3), sound: "note6.wav"),
    Model(color: const Color(0xff9C27B0), sound: "note7.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff253238),
          title: const Text(
            "Tunes App",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: itemModel
              .map((e) => ItemWidget(
                    tuneModel: e,
                  ))
              .toList(),
        ));
  }

//  List<ItemWidget> getItems() {
//     List<ItemWidget> items = [];
//     for (var color in itemColor) {
//       items.add(ItemWidget(color: color));
//     }
//     return items;
//   }
}
