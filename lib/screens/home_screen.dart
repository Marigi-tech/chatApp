

import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/screens/sign_in_screen.dart';
import 'package:messenger_app/screens/sign_up_screen.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: AnimatedContainer(
        width: double.infinity,
        height: double.infinity,
        duration: Durations.medium2,
        decoration: BoxDecoration(
          //Background image
          image: DecorationImage(
            image: AssetImage('assets/images/together.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withValues(alpha: 0.65), // overlay
              BlendMode.darken,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
       
            // Image.asset('assets/images/bg.jpg', height: size.height * .55),
            // SizedBox(
            //   height: size.height * .25,
            //   child: Text('')),
            //?----- Intro text -----
            Padding(
              padding: EdgeInsets.only(right: 45.0, left: 15.0),
              child: Center(
                child: Column(
                  children: [
                     Text('Jamii Pamoja', style: TextStyleProperty.introTitleStyle ),
                    RichText(
                      text: TextSpan(
                        text: "T",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.yellowColor,
                          fontFamily: 'Lato',
                        ),
                        children: [
                          TextSpan(
                            text: "he ",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.whiteColor,
                              fontFamily: 'Lato',
                            ),
                          ),
                          TextSpan(
                            text: "everything app.",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.greenColor,
                              fontFamily: 'Lato',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            // Buttons
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.symmetric(horizontal: 30.0),

              child: Column(
                children: [
                  //----- Get Started Button -----
                  ColorButtonWidget(
                    onPressedCallBack: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => SignUpScreen()),
                      );
                    },
                    buttonTitle: 'Get Started',
                    buttonColor: ColorConstants.greenColor,
                  ),
                  //Spacing
                  SizedBox(height: 10),
                  //----- Sign In Button -----
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => SignInScreen()),
                      );
                    },
                  child : Text('Sign in'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

