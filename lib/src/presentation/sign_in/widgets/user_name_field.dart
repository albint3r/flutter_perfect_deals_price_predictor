import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../aplication/signin/signing_bloc.dart';
import '../../forms/widgets/wraper_text_field.dart';

class UserNameField extends StatelessWidget {
  const UserNameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SigningBloc, SigningState>(
      builder: (context, state) {
        return const WrapperTextField(
          controlName: 'userName',
          labelText: 'User Name',
          icon: Icons.person,
        );
      },
    );
  }
}
