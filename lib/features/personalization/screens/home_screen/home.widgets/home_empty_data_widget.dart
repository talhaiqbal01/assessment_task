import 'package:flutter/material.dart';

class HomeEmptyDataWidget extends StatelessWidget {
  const HomeEmptyDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: Text('No data available', style: textTheme.headlineMedium),
    );
  }
}
