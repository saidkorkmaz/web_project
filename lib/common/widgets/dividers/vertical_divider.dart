import 'package:flutter/material.dart';
import 'package:web_task/common/constants/styles/padding.dart';
import 'package:web_task/common/extensions/context_extension.dart';

class MyVerticalDivider extends StatelessWidget {
  const MyVerticalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      width: MyPadding.medium,
      thickness: 2,
      color: context.xDividerColor,
    );
  }
}
