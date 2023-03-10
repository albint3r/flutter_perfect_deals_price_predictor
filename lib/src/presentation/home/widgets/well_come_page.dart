import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../aplication/auth/auth_bloc.dart';
import '../../core/common_widgets/predict_elevated_button.dart';

import '../../core/common_widgets/sign_out_elevated_button.dart';
import '../../core/common_widgets/wrapper_scaffold_body.dart';
import 'lottie_predict.dart';

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
            child: Column(
              children: const [
                LottiePredict(),
                PredictElevatedButton(),
                SignOutElevatedButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}


