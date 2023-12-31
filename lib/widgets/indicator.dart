import 'package:flutter/material.dart';

class IndicatorPageView extends StatelessWidget {
  const IndicatorPageView({Key? key, required this.isActive}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.75),
      height: isActive ? 15.0 : 11.0,
      width: isActive ? 15.0 : 11.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
        boxShadow: <BoxShadow>[
          isActive
              ? BoxShadow(
                  // color: Colors.white,
                  color: Theme.of(context).colorScheme.primary,
                  offset: const Offset(0.0, 2.0),
                  // blurRadius: 4.0,
                )
              : BoxShadow(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                ),
        ],
      ),
    );
  }
}
