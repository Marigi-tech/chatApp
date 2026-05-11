

import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/forms/sign_up_form.dart';





class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBodyWidget(
      hasNoBackButton: false,
      pageBody: Responsiveness.isMobile(context)
      ? MobileFormWidget(form: SignUpForm(), formTitle: 'Sign Up') : WebFormWidget(form: SignUpForm(), formTitle: 'Sign Up'),
    );
  }
}