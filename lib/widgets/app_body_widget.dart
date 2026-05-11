import 'package:flutter/material.dart';
import 'package:messenger_app/properties/text_style_property.dart';

class AppBodyWidget extends StatelessWidget {
  final Widget pageBody;
  final bool hasNoBackButton;
  final String? appBarTitle;
  final Widget? navBar;
  final AppBar? customAppBar;
  final bool ?isHomePage;
  const AppBodyWidget({super.key, required this.pageBody, required this.hasNoBackButton, this.appBarTitle, this.navBar, this.customAppBar, this.isHomePage});

  @override
  Widget build(BuildContext context) {
    //todo: set background and control app theme mode from here
    return  customAppBar != null
    ? Scaffold(
      appBar: customAppBar,
       body: isHomePage == true  ? pageBody :
        Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0,),
        child: pageBody,
      ),
      bottomNavigationBar: navBar ,
    ):
     hasNoBackButton 
    ? Scaffold(
      body: isHomePage == true  ? pageBody :
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0,),
        child: pageBody,
      ),
      bottomNavigationBar: navBar ,
      
    ) :
    Scaffold(
      appBar:  appBarTitle != null ? AppBar(title: Text(appBarTitle ?? '', style: TextStyleProperty.titleStyle)) : AppBar(),
      body: isHomePage == true  ? pageBody : Padding(
         padding: EdgeInsets.symmetric(horizontal: 20.0,),
        child: pageBody),
      bottomNavigationBar: navBar,
    );
  }
}