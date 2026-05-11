
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/screens/sign_in_screen.dart';
import 'package:messenger_app/widgets/social_media_icon_widget.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  Color? textColor;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    confirmPasswordController.dispose();
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
              //Name
              FormLabelWidget(label: 'User name', isRequired: true),
              SizedBox(height: 6),
              TextFormField(
                controller: nameController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                decoration: InputDecorationProperty.textInputDecoration(
                  hintText: 'Enter your user name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter your name';
                  }
                  return null;
                },
              ),

              SizedBox(height: 15.0),

              //---- Email Adress -----
              FormLabelWidget(label: 'Email address', isRequired: true),
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

             //Enter Account type (business/ personal etc)
              // SizedBox(height: 15.0),

              //Password -----
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
                    return 'Enter password';
                  }
                  return null;
                },
              ),

              SizedBox(height: 15.0),
              //Confirm password
              FormLabelWidget(label: 'Confirm password', isRequired: true),
              SizedBox(height: 6),
              TextFormField(
                controller: confirmPasswordController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                decoration: InputDecorationProperty.textInputDecoration(
                  hintText: 'Confirm password',
                  isPassword: true,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter password';
                  }
                  return null;
                },
              ),

              SizedBox(height: 15.0),
              //? Sign in option
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
                        MaterialPageRoute(builder: (_) => SignInScreen()),
                      );
                    },
                    child: Text(
                      'Already have an account? sign In',
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 0.6,
                        color: textColor,
                        fontWeight: FontWeight.w100,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 50.0),
              //? ------ Log in button ------
              ColorButtonWidget(
                onPressedCallBack: () {
                  // if (_formKey.currentState!.validate()) {
                  //   //todo:Actual logic
                  //   Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(builder: (_) => WidgetTree()),
                  //   );
                  // }
                },
                buttonTitle: 'Create account',
                buttonColor: ColorConstants.greenColor,
              ),

              SizedBox(height: 30),
              //Add social sign up icons here
              SocialMediaIconWidget(),
            ],
          ),
        ),
   
    );
  }
}
