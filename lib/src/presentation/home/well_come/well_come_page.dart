import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/auth/auth_bloc.dart';
import '../../core/common_widgets/gap.dart';
import '../../core/common_widgets/wrapper_scaffold_body.dart';
import 'widgets/lottie_predict.dart';
import 'widgets/lottie_swipe_left.dart';
import 'widgets/well_come_header.dart';
import 'widgets/well_come_text_body.dart';

class WellComePage extends StatelessWidget {
  const WellComePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state.auth.currentUser == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return WrapperScaffoldBody(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  LottiePredict(),
                  Gap(50),
                  WellComeHeader(),
                  WellComeTextBody(),
                  LottieSwipeLeft(),
                  // SignOutElevatedButton(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
