import 'package:flutter/material.dart';
import 'package:samuelswidgets/utils/widget_helpers.dart';

class DefaultCenterContainer extends StatelessWidget {
  final List<Widget> children;
  final bool? isColumn;
  final double? hPadding;
  final double? vPadding;
  final double? maxWidth;
  const DefaultCenterContainer(
      {super.key,
      required this.children,
      this.isColumn = true,
      this.hPadding = 8.0,
      this.vPadding = 16,
      this.maxWidth = 400});

  @override
  Widget build(BuildContext context) {
    if ((isColumn ?? false) == false) {
      return Center(
        child: Container(
          // constraints: BoxConstraints(maxWidth: maxWidth!),
          // margin:
          //     EdgeInsets.symmetric(horizontal: hPadding!, vertical: vPadding!),
          // child:
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.stretch,
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: children,
          // ),
          constraints: mobileScreenBox,
          margin:
              EdgeInsets.symmetric(horizontal: hPadding!, vertical: vPadding!),
          child: ListView(
            children: children,
          ),
        ),
      );
    }
    return Center(
      child: Container(
        constraints: mobileScreenBox,
        margin:
            EdgeInsets.symmetric(horizontal: hPadding!, vertical: vPadding!),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
