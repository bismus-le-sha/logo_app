import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logo_app/cubits/logo_cubit.dart';
import 'package:logo_app/injection_container.dart';
import 'package:logo_app/widgets/logo.dart';

@RoutePage()
class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<LogoCubit>(),
      child: BlocBuilder<LogoCubit, LogoState>(
        builder: (context, state) {
          return Center(
            child: SizedBox(
              height: 200,
              width: 200,
              child: Logo(
                isLeftActive: state.isLeftActive,
                isRightActive: state.isRightActive,
                onTap: context.read<LogoCubit>().toggleHalfLogo,
              ),
            ),
          );
        },
      ),
    );
  }
}
