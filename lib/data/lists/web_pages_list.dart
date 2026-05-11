import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/screens/chats_screen.dart';
import 'package:messenger_app/screens/events_screen.dart';
import 'package:messenger_app/screens/groups_screen.dart';
import 'package:messenger_app/screens/profile_screen.dart';
import 'package:messenger_app/screens/settings_screen.dart';

List<Widget> webPages = [
  ChatsScreen(), //chats
  GroupsScreen(), // groups
  EventsScreen(), //events
  SettingsScreen(), //settings
  ProfileScreen(), //profile
];
