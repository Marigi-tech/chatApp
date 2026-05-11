

import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/screens/dashboard_screen.dart';
import 'package:messenger_app/screens/forgot_password_screen.dart';
import 'package:messenger_app/widgets/social_media_icon_widget.dart';



class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
   TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  Color? textColor;
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30.0),

              //Email Adress
              FormLabelWidget( label:'Email address', isRequired: true),
              SizedBox(height: 6),
              TextFormField(
                controller: emailController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorationProperty.textInputDecoration(
                  hintText: 'Enter email address',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter email address';
                  }
                  return null;
                },
              ),

              SizedBox(height: 15.0),

              //Password
              FormLabelWidget(label: 'Password', isRequired: true),
              SizedBox(height: 6),
              TextFormField(
                controller: passwordController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                decoration: InputDecorationProperty.textInputDecoration(
                  hintText: 'Enter password',
                  isPassword: true,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.0),
              //? forgot password
              Align(
                alignment: Alignment.topRight,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onHover: (event) {
                    setState(() {
                      textColor = ColorConstants.greenColor;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      textColor = null;
                    });
                  },

                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => ForgotPasswordScreen()),
                      );
                    },
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 1,
                        color: textColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              // Log in button ------
              ColorButtonWidget(
                onPressedCallBack: () {
                  // if (_formKey.currentState!.validate()) {
                    //todo: actual logic
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => DashboardScreen()),
                    );
                  // }
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (_) => WidgetTree()),
                  // );
                },
                buttonTitle: 'Sign In',
                buttonColor: ColorConstants.greenColor,
              ),

              SizedBox(height: 30),
              SocialMediaIconWidget(),
            ],
          ),
        ),
    
    );
  }
}