
import 'package:messenger_app/commons/exports.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:Align(
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

              SizedBox(height: 35.0),
              ColorButtonWidget(onPressedCallBack: (){

              }, buttonTitle: 'Submit', buttonColor: ColorConstants.greenColor)
              
              ]) ));
  }
}