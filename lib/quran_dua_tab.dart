import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

/// Page shown when a card in the songs tab is tapped.
///
/// On Android, this page sits at the top of your app. On iOS, this page is on
/// top of the songs tab's content but is below the tab bar itself.
class QuranDuaTab extends StatelessWidget {
  const QuranDuaTab({this.id, this.duaType, this.color, this.indexList});

  final int id;
  final String duaType;
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
//                  if (i == 0) {
//                    return Padding(
//                      padding:
//                      const EdgeInsets.only(left: 15, top: 16, bottom: 8),
//                    );
//                  }
                  // Just a bunch of boxes.
                  return DuaPlaceholderCard(duaType: duaType, index: indexList == null ? i : indexList[i]);
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
      appBar: AppBar(title: Text(duaType)),
      body: buildBody(),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(duaType),
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
