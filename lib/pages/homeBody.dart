import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../data/dataList.dart';
import '../objects/parameterTile.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23.0),
            child: MasonryGridView.builder(
                itemCount: dataList.length,
                scrollDirection: Axis.vertical,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                itemBuilder: (context, index) => ParameterTile(
                      data: dataList[index],
                    ))));
  }
}
