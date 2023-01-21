import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:web_task/common/constants/styles/format.dart';
import 'package:web_task/common/constants/styles/padding.dart';
import 'package:web_task/common/constants/styles/radius.dart';
import 'package:web_task/common/extensions/context_extension.dart';

class Tile extends StatelessWidget {
  const Tile({Key? key, required this.label, required this.date, required this.id, this.onTap, this.isSelected = false})
      : super(key: key);

  final String id;
  final String label;
  final DateTime date;
  final bool isSelected;
  final Function(String id)? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: MyPadding.small),
      child: InkWell(
        onTap: () {
          onTap?.call(id);
        },
        child: Container(
          padding: const EdgeInsets.all(MyPadding.small),
          decoration: BoxDecoration(
            color: context.xLight,
            borderRadius: BorderRadius.circular(MyRadius.small),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: isSelected ? context.xSubtitle2 : context.xSubtitle1,
              ),
              Text(
                DateFormat(MyFormats.dateTime).format(date),
                style: context.xBodyText2.copyWith(color: context.xMedium),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
