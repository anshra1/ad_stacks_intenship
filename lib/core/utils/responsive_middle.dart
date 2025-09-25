import 'package:flutter/material.dart';

class ResponsiveMiddleSection extends StatelessWidget {
  const ResponsiveMiddleSection({
    required this.hero,
    required this.grid,
    required this.chart,
    super.key,
  });
  // You can pass child widgets: heroWidget, gridWidget, chartWidget
  final Widget hero;
  final Widget grid;
  final Widget chart;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const double heroHeight = 250;
        const double gridHeight = 370;
        const double chartHeight = 320;

        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                  height: heroHeight,
                  child: hero,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                  height: gridHeight,
                  child: grid,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                  height: chartHeight,
                  child: chart,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
