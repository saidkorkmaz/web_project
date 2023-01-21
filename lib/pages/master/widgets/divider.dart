import 'package:flutter/material.dart';
import 'package:web_task/common/extensions/context_extension.dart';

import '../../../common/constants/styles/padding.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MyPadding.small),
      child: Container(
        height: 1,
        decoration: BoxDecoration(
          color: context.xDividerColor,
        ),
      ),
    );
  }
}
