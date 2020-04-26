import 'package:dua/HadithDua.dart';
import 'package:dua/HadithObject.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hadith_detail_dua_tab.dart';
import 'widgets.dart';

/// Page shown when a card in the songs tab is tapped.
///
/// On Android, this page sits at the top of your app. On iOS, this page is on
/// top of the songs tab's content but is below the tab bar itself.
class HadithDuaTab extends StatelessWidget {
  const HadithDuaTab({this.id, this.duaType,this.duaTitle, this.category});

  final int id;
  final String duaType;
  final String duaTitle;
  final String category;

  Widget buildBody() {

    HadithDua hadithDua = HadithDua();
    List<HadithObject> hadithListByCategory = hadithDua.getHadithListByCategory(this.category);
    print("category list: "+hadithListByCategory.toString());
    print("category: "+category);

    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: hadithListByCategory.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Card(
                      margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                      color: Colors.teal,
                      child: InkWell(
                        splashColor: Colors.greenAccent,
                        onTap: () {
                          print('dua tab tapped: '+category);
                          Navigator.of(context).push<void>(
                            MaterialPageRoute(
                              builder: (context) => HadithDetailDuaTab(
                                category: this.category,
                                hadithDetails: hadithListByCategory[index].hadithDetail
                              ),
                            ),
                          );
                        },
                        child:Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                hadithListByCategory[index].arabic,
                                style: TextStyle(
                                  fontSize: 26.0,
//                color: Colors.black26,
                                ),
                              ),
                            ),
                            SizedBox(height: 1.0,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                hadithListByCategory[index].english,
                                style: TextStyle(
                                  fontSize: 22.0,
//              color: Colors.black26,
                                ),
                              ),
                            ),
                            SizedBox(height: 1.0,),
                            Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: Text(
                                hadithListByCategory[index].urdu,
                                style: TextStyle(
                                  fontSize: 24.0,
//              color: Colors.black26,
                                ),
                              ),
                            ),
//          SizedBox(height: 6.0,),
//                            Padding(
//                              padding: const EdgeInsets.all(5.0),
//                              child: Text(
//                                getDua().chapter,
//                                style: TextStyle(
//                                  fontSize: 20.0,
////              color: Colors.black26,
//                                ),
//                              ),
//                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
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
