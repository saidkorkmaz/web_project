import 'package:flutter/material.dart';
import 'package:web_task/pages/detail/description_part/description_part.dart';
import 'package:web_task/pages/detail/titles_part/titles_part.dart';

import '../../common/widgets/dividers/vertical_divider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: TitlesPart(),
        ),
        MyVerticalDivider(),
        Expanded(
          child: DescriptionPart(),
        ),
      ],
    );
  }
}
