import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_task/common/constants/styles/theme.dart';
import 'package:web_task/common/controllers/controllers.dart';
import 'package:web_task/data/data.dart';
import 'package:web_task/pages/master/master_page.dart';

void main() {
  Data.instance.initialize();
  Controllers.initialize();
  runApp( const ProviderScope(child: WebTaskMain()));
}

class WebTaskMain extends StatelessWidget {
 const WebTaskMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Web Task',
      theme: Themes.lightTheme,
      home: const MasterPage(),
    );
  }
}
