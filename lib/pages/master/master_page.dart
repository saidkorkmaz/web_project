import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_task/common/constants/styles/padding.dart';
import 'package:web_task/common/constants/styles/radius.dart';
import 'package:web_task/common/extensions/context_extension.dart';
import 'package:web_task/pages/detail/detail_page.dart';
import 'package:web_task/pages/master/widgets/navigation_bar.dart';

class MasterPage extends ConsumerWidget {
  const MasterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth >= 480) {
          return Row(children: [
            Container(
              width: context.xWidth * 0.2,
              decoration: BoxDecoration(
                color: context.xPrimaryColor,
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(MyRadius.medium),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: MyPadding.medium),
                child: MyNavigationBar(),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const DetailPage(),
              ),
            ),
          ]);
        } else {
          return Row(children: const [Text("Mobile Part")]);
        }
      }),
    );
  }
}
