import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/app/bloc/app_bloc.dart';
import 'package:flutter_todo/app/widget/pro_banner.dart';
import 'package:gap/gap.dart';

import '../bloc/app_state.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ProBanner(),
          Expanded(
            child: BlocBuilder<AppBloc, AppState>(
              builder: (context, state) => ListView.separated(
                itemBuilder: (context, index) => const Gap(12.0),
                separatorBuilder: (context, index) => const Gap(12.0),
                itemCount: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
