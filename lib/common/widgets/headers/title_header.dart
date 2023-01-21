import 'package:flutter/material.dart';
import 'package:web_task/common/extensions/context_extension.dart';

import '../../constants/styles/padding.dart';
import '../dividers/horizontal_divider.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({Key? key, required this.label}) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: MyPadding.large),
          child: Text(
            label,
            style: context.xHeadline3,
            textAlign: TextAlign.start,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: MyPadding.large),
          child: MyHorizontalDivider(),
        ),
      ],
    );
  }
}
