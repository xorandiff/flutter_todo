import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/app/app.dart';
import 'package:flutter_todo/app/bloc/app_bloc.dart';
import 'package:flutter_todo/app/widget/pro_banner.dart';
import 'package:gap/gap.dart';

import '../bloc/app_state.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 243, 243, 1.0),
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/me.png'),
            ),
            Gap(16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Mateusz',
                  style: TextStyle(
                    fontSize: 20.0,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(0, 2.0),
                      ),
                    ],
                  ),
                ),
                Text(
                  'mateusz.struk@gmail.com',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w100,
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(0, 2.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(53, 86, 171, 1.0),
      ),
      body: Column(
        children: [
          const ProBanner(),
          Expanded(
            child: BlocBuilder<AppBloc, AppState>(
              builder: (context, state) => ListView.separated(
                padding: const EdgeInsets.all(16.0),
                itemBuilder: (context, index) => TaskListItem(
                  task: state.tasks[index],
                ),
                separatorBuilder: (context, index) => const Gap(12.0),
                itemCount: state.tasks.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
