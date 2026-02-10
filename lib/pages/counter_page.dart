import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logo_app/cubits/counter_cubit.dart';
import 'package:logo_app/injection_container.dart';
import 'package:logo_app/widgets/logo.dart';

@RoutePage()
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<CounterCubit>(),
      child: BlocBuilder<CounterCubit, int>(
        builder: (context, count) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'counter: $count',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(fontSize: 66),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Logo(
                  onTap: context.read<CounterCubit>().increment,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
