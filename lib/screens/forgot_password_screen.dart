

import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/forms/forgot_password_form.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBodyWidget(
      hasNoBackButton: false,
      pageBody: Responsiveness.isMobile(context)
      ? MobileFormWidget(form: ForgotPasswordForm(), formTitle: 'Reset password') : WebFormWidget(form: ForgotPasswordForm(), formTitle: 'Reset password'),
    );
  }
}