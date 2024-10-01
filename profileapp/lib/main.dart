import 'package:flutter/material.dart';
import 'package:profileapp/components/profile_buttons.dart';
import 'package:profileapp/components/profile_count_info.dart';
import 'package:profileapp/components/profile_drawer.dart';
import 'package:profileapp/components/profile_header.dart';
import 'package:profileapp/components/profile_tab.dart';
import 'package:profileapp/theme.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),// ProfileDrawer()
      // AppBar()
      body: Column(
        children: [
          // header()
          const SizedBox(height: 20),
          ProfileHeader(),
          // countInfo()
          const SizedBox(height: 20),
          ProfileCountInfo(),
          // Buttons()
          ProfileButtons(),
          const SizedBox(height: 20),
          // Tab()
          Expanded(child: ProfileTab()),
        ],
      ),
    );
  }
}

AppBar _buildProfileAppBar(){
  return AppBar();
}

