import 'package:flutter/material.dart';
import 'package:web_task/common/constants/styles/padding.dart';
import 'package:web_task/common/extensions/context_extension.dart';

class MyHorizontalDivider extends StatelessWidget {
  const MyHorizontalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MyPadding.medium),
      child: Container(
        height: 2,
        color: context.xDividerColor,
      ),
    );
  }
}
