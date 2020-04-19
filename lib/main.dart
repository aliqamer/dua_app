import 'package:dua/HomeTab.dart';
import 'package:dua/profile_tab.dart';
import 'package:dua/settings_tab.dart';
import 'package:dua/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dua',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: PlatformAdaptingHomePage(),
    );
  }
}

class PlatformAdaptingHomePage extends StatefulWidget {
  @override
  _PlatformAdaptingHomePageState createState() =>
      _PlatformAdaptingHomePageState();
}

class _PlatformAdaptingHomePageState extends State<PlatformAdaptingHomePage> {
  // This isn't needed for apps that doesn't toggle platforms while running.
  final songsTabKey = GlobalKey();

  // In Material, this app uses the hamburger menu paradigm and flatly lists
  // all 4 possible tabs. This drawer is injected into the songs tab which is
  // actually building the scaffold around the drawer.
  Widget _buildAndroidHomePage(BuildContext context) {
    return HomeTab(
      key: songsTabKey,
      androidDrawer: _AndroidDrawer(),
    );
  }

  // On iOS, the app uses a bottom tab paradigm. Here, each tab view sits inside
  // a tab in the tab scaffold. The tab scaffold also positions the tab bar
  // in a row at the bottom.
  //
  // An important thing to note is that while a Material Drawer can display a
  // large number of items, a tab bar cannot. To illustrate one way of adjusting
  // for this, the app folds its fourth tab (the settings page) into the
  // third tab. This is a common pattern on iOS.
  Widget _buildIosHomePage(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              title: Text(HomeTab.title), icon: HomeTab.iosIcon),
//          BottomNavigationBarItem(
//              title: Text(NewsTab.title), icon: NewsTab.iosIcon),
//          BottomNavigationBarItem(
//              title: Text(ProfileTab.title), icon: ProfileTab.iosIcon),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              defaultTitle: HomeTab.title,
              builder: (context) => HomeTab(key: songsTabKey),
            );
//          case 1:
//            return CupertinoTabView(
//              defaultTitle: NewsTab.title,
//              builder: (context) => NewsTab(),
//            );
//          case 2:
//            return CupertinoTabView(
//              defaultTitle: ProfileTab.title,
//              builder: (context) => ProfileTab(),
//            );
          default:
            assert(false, 'Unexpected tab');
            return null;
        }
      },
    );
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _buildAndroidHomePage,
      iosBuilder: _buildIosHomePage,
    );
  }
}

class _AndroidDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Icon(
                Icons.account_circle,
                color: Colors.green.shade800,
                size: 96,
              ),
            ),
          ),
          ListTile(
            leading: HomeTab.androidIcon,
            title: Text(HomeTab.title),
            onTap: () {
              Navigator.pop(context);
            },
          ),
//          ListTile(
//            leading: NewsTab.androidIcon,
//            title: Text(NewsTab.title),
//            onTap: () {
//              Navigator.pop(context);
//              Navigator.push<void>(
//                  context, MaterialPageRoute(builder: (context) => NewsTab()));
//            },
//          ),
          ListTile(
            leading: ProfileTab.androidIcon,
            title: Text(ProfileTab.title),
            onTap: () {
              Navigator.pop(context);
              Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => ProfileTab()));
            },
          ),
          // Long drawer contents are often segmented.
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
          ListTile(
            leading: SettingsTab.androidIcon,
            title: Text(SettingsTab.title),
            onTap: () {
              Navigator.pop(context);
              Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => SettingsTab()));
            },
          ),
        ],
      ),
    );
  }
}