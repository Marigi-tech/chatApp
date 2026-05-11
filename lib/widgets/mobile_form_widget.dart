import 'package:messenger_app/commons/exports.dart';

class MobileFormWidget extends StatelessWidget {
  final Widget form;
  final String formTitle;
  const MobileFormWidget({super.key, required this.form, required this.formTitle});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(formTitle, style: TextStyleProperty.titleStyle,),
              const SizedBox(height: 20.0),

              SingleChildScrollView(child: form),
            ],
          ),
        ),
      ],
    
    ),);
  }
}
