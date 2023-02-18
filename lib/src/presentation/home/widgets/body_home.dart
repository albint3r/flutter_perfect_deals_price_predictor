import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/auth/auth_bloc.dart';
import '../../core/app_router/app_router.dart';
import '../../core/common_widgets/wrapper_scaffold_body.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        print(state);
        print(state);
        print(state);
        print(state);
        return WrapperScaffoldBody(
          child: PageView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Home'),
                    ElevatedButton(
                        onPressed: () {
                          context.pushRoute(const SignInRoute());
                        },
                        child: const Text('Go to Form'))
                  ],
                ),
              ),
              const Center(
                child: Text('2'),
              ),
              const Center(
                child: Text('3'),
              )
            ],
          ),
        );
      },
    );
  }
}
