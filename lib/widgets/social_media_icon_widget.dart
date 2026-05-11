
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/commons/icons.dart';
import 'package:messenger_app/widgets/social_media_icon_button_widget.dart';

class SocialMediaIconWidget extends StatelessWidget {
  const SocialMediaIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // OR divider section
        Row(
          children: [
            Expanded(child: Divider(thickness: 1)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("OR", style: TextStyle(fontWeight: FontWeight.w600)),
            ),
            Expanded(child: Divider(thickness: 1)),
          ],
        ),

        SizedBox(height: 18),

        // Row of social icons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: SocialMediaIconButtonWidget(socialIcon : AppSocialIconConstant.googleIcon)),
            SizedBox(width: 10),
            Expanded(child: SocialMediaIconButtonWidget(socialIcon :AppSocialIconConstant.appleIcon)),
          ],
        ),
      ],
    );
  }
}
