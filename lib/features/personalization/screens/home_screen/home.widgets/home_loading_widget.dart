import 'package:assessment_task/config/widgets/loading/loading.dart';
import 'package:flutter/material.dart';

class HomeLoadingWidget extends StatelessWidget {
  const HomeLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: TLoading());
  }
}
