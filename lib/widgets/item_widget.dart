import 'package:flutter/material.dart';

import '../models/item_model.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.tuneModel,
  });
  final Model tuneModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          tuneModel.playSound();
        },
        child: Container(
          color: tuneModel.color,
        ),
      ),
    );
  }
}
