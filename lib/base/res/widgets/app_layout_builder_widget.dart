import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  const AppLayoutBuilderWidget({
    super.key,
    required this.randomDivider,
    this.width= 3,
  });

  final int randomDivider;
  final double width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(), (index) {
          return SizedBox(
            width: width,
            height: 1,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          );
        }),
      );
    });
  }
}
