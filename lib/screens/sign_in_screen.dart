

import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/forms/sign_in_form.dart';



class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBodyWidget(
      hasNoBackButton: false,
      pageBody: Responsiveness.isMobile(context)
      ? MobileFormWidget(form: SignInForm(), formTitle: 'Sign In') : WebFormWidget(form: SignInForm(), formTitle: 'Sign In'),
    );
  }
}