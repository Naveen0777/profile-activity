import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  final Widget? icon;
  final String title;
  final String value;
  final Color valueColor;
  final Color titleColor;
  final String? additionalText;
  final Color? additionalTextColor;

  const InfoRow({
    super.key,
    this.icon,
    required this.title,
    required this.value,
    this.valueColor = Colors.white,
    this.titleColor = Colors.grey,
    this.additionalText,
    this.additionalTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.grey, width: 0.5),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child:
                    icon ??
                    const Icon(
                      Icons.circle_outlined,
                      color: Colors.grey,
                      size: 14.0,
                    ),
              ),
            ),
          ),
          Text(title, style: TextStyle(color: titleColor, fontSize: 14.0)),
          if (additionalText != null)
            Text(
              additionalText!,
              style: TextStyle(color: Colors.greenAccent, fontSize: 12.0),
            ),
          const Spacer(),
          Text(value, style: TextStyle(color: valueColor, fontSize: 14)),
          const SizedBox(width: 8),
          const Icon(Icons.arrow_forward, color: Colors.grey),
        ],
      ),
    );
  }
}

class InfoRowLast extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;
  final Color titleColor;

  const InfoRowLast({
    super.key,
    required this.title,
    required this.value,
    this.valueColor = Colors.grey,
    this.titleColor = Colors.white70,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: TextStyle(color: titleColor, fontSize: 14.0)),
      subtitle: Text(
        value,
        style: TextStyle(color: valueColor, fontSize: 12.0),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.grey,
        size: 14.0,
      ),
    );
  }
}
