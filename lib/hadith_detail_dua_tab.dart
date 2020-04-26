import 'package:dua/HadithDua.dart';
import 'package:dua/HadithObject.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

/// Page shown when a card in the songs tab is tapped.
///
/// On Android, this page sits at the top of your app. On iOS, this page is on
/// top of the songs tab's content but is below the tab bar itself.
class HadithDetailDuaTab extends StatelessWidget {
  const HadithDetailDuaTab({this.category, this.hadithDetails});

  final List<HadithDetail> hadithDetails;
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
                itemCount: hadithDetails.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Card(
                      margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                      color: Colors.teal,
                      child: InkWell(
                        splashColor: Colors.greenAccent,
                        onTap: () {
//                          Navigator.of(context).push<void>(
//                            MaterialPageRoute(
//                              builder: (context) => HadithDuaTab(
//                                id: id,
//                                duaType: 'Hadith',
//                                category: categories[index],
//                              ),
//                            ),
//                          );
                        },
                        child:Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                hadithDetails[index].haditha,
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
                                hadithDetails[index].hadithe,
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
                                hadithDetails[index].hadithu,
                                style: TextStyle(
                                  fontSize: 24.0,
//              color: Colors.black26,
                                ),
                              ),
                            ),
          SizedBox(height: 6.0,),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                hadithDetails[index].book,
                                style: TextStyle(
                                  fontSize: 20.0,
//              color: Colors.black26,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                hadithDetails[index].chapter,
                                style: TextStyle(
                                  fontSize: 20.0,
//              color: Colors.black26,
                                ),
                              ),
                            ),
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
      appBar: AppBar(title: Text(category)),
      body: buildBody(),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(this.category),
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
