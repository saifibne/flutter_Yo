import 'package:flutter/material.dart';

WidgetSpan hyperLink(BuildContext ctx, String value, VoidCallback clickFn) {
  return WidgetSpan(
    alignment: PlaceholderAlignment.baseline,
    baseline: TextBaseline.alphabetic,
    child: InkWell(
      onTap: clickFn,
      child: Text(
        value,
        style: Theme.of(ctx).textTheme.bodyMedium?.copyWith(
            color: const Color(0xff05719C),
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w500),
      ),
    ),
  );
}
