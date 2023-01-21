import 'package:flutter/material.dart';
import 'package:web_task/common/constants/styles/radius.dart';
import 'package:web_task/common/extensions/context_extension.dart';

class SelectableItem extends StatelessWidget {
  final String label;
  final bool isSelected;
  const SelectableItem({
    Key? key,
    required this.label,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: isSelected ? context.xSecondaryColor : context.xTransparentColor,
          borderRadius: BorderRadius.circular(MyRadius.medium)),
      child: Center(
        child: Text(
          label,
          style: context.xBodyText1.copyWith(color: context.xWhite),
        ),
      ),
    );
  }
}
