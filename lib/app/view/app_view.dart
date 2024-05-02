import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/app/app.dart';
import 'package:gap/gap.dart';

import '../bloc/app_state.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TaskForm(),
          ),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30.0,
          shadows: [
            Shadow(
              offset: Offset(0.0, 1.5),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/me.png'),
              radius: 25.0,
            ),
            Gap(16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello, Mateusz'),
                Gap(6.0),
                Text(
                  'mateusz.struk@gmail.com',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w100,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ],
        ),
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
