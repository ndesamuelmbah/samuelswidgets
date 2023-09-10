import 'package:flutter/material.dart';

class WarningWidget extends StatelessWidget {
  final String warningMessage;
  final String? subtitle;
  final Widget? trailingWidget;
  final void Function()? onTap;
  final Color? tileColor;
  const WarningWidget(
      {Key? key,
      this.subtitle,
      required this.warningMessage,
      this.trailingWidget,
      this.onTap,
      this.tileColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget? subtitleWidget = subtitle == null ? null : Text(subtitle!);
    final color = tileColor ?? Colors.yellow.shade400;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: ListTile(
          tileColor: color,
          minLeadingWidth: 0,
          contentPadding: const EdgeInsets.all(10),
          onTap: onTap,
          leading: const Icon(
            Icons.warning_amber_rounded,
            size: 30,
            color: Colors.red,
          ),
          title: Text(warningMessage),
          subtitle: subtitleWidget,
          trailing: trailingWidget),
    );
  }
}
