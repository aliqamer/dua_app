import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

/// Page shown when a card in the songs tab is tapped.
///
/// On Android, this page sits at the top of your app. On iOS, this page is on
/// top of the songs tab's content but is below the tab bar itself.
class QuranDuaTab extends StatelessWidget {
  const QuranDuaTab({this.id, this.duaType,this.duaTitle, this.color, this.indexList});

  final int id;
  final String duaType;
  final String duaTitle;
  final Color color;
  final List<int> indexList;

  Widget buildBody() {
    DuaPlaceholderCard duaPlaceholderCard = DuaPlaceholderCard();
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Divider(
            height: 0,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: indexList == null ? duaPlaceholderCard.getLength(duaType) : indexList.length,
              // ignore: missing_return
              itemBuilder: (context, i) {
                if(i != null) {
                 // Just a bunch of boxes.
                  return DuaPlaceholderCard(duaType: duaType,duaTitle: duaTitle, index: indexList == null ? i : indexList[i]);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // Non-shared code below because we're using different scaffolds.
  // ===========================================================================

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(duaTitle)),
      body: buildBody(),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(duaTitle),
        previousPageTitle: 'Songs',
      ),
      child: buildBody(),
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
