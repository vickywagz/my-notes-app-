import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart';
import 'package:mynotes/services/auth/auth_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynotes/services/auth/bloc/auth_bloc.dart';
import 'package:mynotes/services/auth/bloc/auth_event.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('verify email'),
      ),
      body: Column(
        children: [
          const Text(
              'we\'ve sent you an email verification. Please open it to verify your account.'),
          const Text(
              'if you haven\'t received a verification email yet, press the button below'),
          TextButton(
            onPressed: () {
              context.read<AuthBloc>().add(
                    const AuthEventSendEmailVerification(),
                  );
            },
            child: const Text('send email verification'),
          ),
          TextButton(
            onPressed: () async {
              () {
                context.read<AuthBloc>().add(
                      const AuthEventLogOut(),
                    );
              };
            },
            child: const Text('Restart'),
          )
        ],
      ),
    );
  }
}
