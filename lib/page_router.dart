import 'package:dua/quran_categories.dart';
import 'package:dua/quran_dua_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';

class PageRouter extends StatelessWidget {
  const PageRouter({this.id, this.duaType, this.color});

  final int id;
  final String duaType;
  final Color color;

  Widget _buildBody() {

    if(duaType == 'Quran') {
      var quranDuaTab = QuranDuaTab(
        id: id,
        duaType: duaType,
        color: color,
        indexList: null,
      );
      print('pagerouter calling qurantab');
      return quranDuaTab.buildBody();

    } else if(duaType == "QuranCategory") {
      print('pagerouter calling quran category');

      var quranCategory = QuranCategory(id: id, duaType: duaType);
      return quranCategory.buildBody();
    }
  }

  // ===========================================================================
  // Non-shared code below because we're using different scaffolds.
  // ===========================================================================

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(duaType)),
      body: _buildBody(),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(duaType),
        previousPageTitle: 'Songs',
      ),
      child: _buildBody(),
    );
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
