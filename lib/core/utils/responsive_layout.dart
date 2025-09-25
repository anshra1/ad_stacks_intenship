import 'package:flutter/widgets.dart';

/// TODO: Confirm breakpoints with product
class Breakpoints {
  const Breakpoints._();
  static const double mobileMax = 768;
  static const double tabletMax = 1024;
  static const double desktopMax = 1440;
}

enum FormFactor { mobile, tablet, desktop, largeDesktop }

FormFactor formFactorForWidth(double width) {
  if (width < Breakpoints.mobileMax) return FormFactor.mobile;
  if (width < Breakpoints.tabletMax) return FormFactor.tablet;
  if (width < Breakpoints.desktopMax) return FormFactor.desktop;
  return FormFactor.largeDesktop;
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    required this.mobile,
    required this.tablet,
    required this.desktop,
    super.key,
    Widget? largeDesktop,
  }) : largeDesktop = largeDesktop ?? desktop;

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget largeDesktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);
        
        final width = constraints.maxWidth;
        final ff = formFactorForWidth(width);
        switch (ff) {
          case FormFactor.mobile:
            return mobile;
          case FormFactor.tablet:
            return tablet;
          case FormFactor.desktop:
            return desktop;
          case FormFactor.largeDesktop:
            return largeDesktop;
        }
      },
    );
  }
}
