import 'package:flutter/material.dart';

class NotiWidget extends StatelessWidget {
  const NotiWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.endIcon = true,
    this.startIcon = true,
    this.textColor,
    required TextOverflow overflow,
    required this.subtitle,
  }) : super(key: key);
  final String subtitle;
  final String title;
  final IconData? icon;
  final VoidCallback onPressed;
  final bool endIcon;
  final Color? textColor;
  final bool startIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selectedTileColor: Colors.white,
      selectedColor: Colors.white,
      onTap: onPressed,
      leading: startIcon
          ? Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xff4E6859).withOpacity(0.2),
              ),
              child: Icon(
                icon,
                size: 30,
              ),
            )
          : null,
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyLarge?.apply(color: textColor),
      ),
      subtitle: Text(subtitle),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                // color: Colors.grey.withOpacity(0.1),
              ),
              child: Icon(
                Icons.notifications,
                color: Colors.green.shade400,
              ),
            )
          : null,
    );
  }
}
