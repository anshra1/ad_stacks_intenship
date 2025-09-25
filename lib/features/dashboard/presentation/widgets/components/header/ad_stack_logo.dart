import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/gen/assets.gen.dart';

class AdStackLogo extends StatelessWidget {
  const AdStackLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Assets.images.asStack.image(
          height: 75,
        ),
      ),
    );
  }
}
