import 'package:dua/dua_object.dart';
import 'package:dua/quran_dua.dart';
import 'package:dua/quran_dua_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

/// Page shown when a card in the songs tab is tapped.
///
/// On Android, this page sits at the top of your app. On iOS, this page is on
/// top of the songs tab's content but is below the tab bar itself.
class QuranCategory {
  const QuranCategory({this.id, this.duaType});

  final int id;
  final String duaType;

  Widget buildBody() {
    DuaPlaceholderCard duaPlaceholderCard = DuaPlaceholderCard();
    QuranDua quranDua = QuranDua();
    var duas = quranDua.getDuaList();
    Map<String, List<int>> categoriesMap = quranDua.getCategoriesMap();
    List<String> categories = quranDua.getCategories();

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
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Card(
                      margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                      color: Colors.teal,
                      child: InkWell(
                        splashColor: Colors.greenAccent,
                        onTap: () {
                        print('clicked: '+categories[index]);
                        print('duaType: '+duaType);
                          Navigator.of(context).push<void>(
                            MaterialPageRoute(
                              builder: (context) => QuranDuaTab(
                                id: id,
                                duaType: 'Quran',
                                color: Colors.teal,
                                indexList: categoriesMap[categories[index]],
                              ),
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                categories[index],
                                style: TextStyle(
                                  fontSize: 20.0,
//                color: Colors.black26,
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
}
