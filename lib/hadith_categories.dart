import 'package:dua/HadithDua.dart';
import 'package:dua/dua_object.dart';
import 'package:dua/hadith_dua_tab.dart';
import 'package:dua/quran_dua.dart';
import 'package:dua/quran_dua_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class HadithCategory {
  const HadithCategory({this.id, this.duaType, this.duaTitle});

  final int id;
  final String duaType;
  final String duaTitle;

  Widget buildBody() {
    DuaPlaceholderCard duaPlaceholderCard = DuaPlaceholderCard();
    HadithDua hadithDua = HadithDua();
    List<String> categories = hadithDua.getCategories();

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
                          Navigator.of(context).push<void>(
                            MaterialPageRoute(
                              builder: (context) => HadithDuaTab(
                                id: id,
                                duaType: 'Hadith',
                                duaTitle: categories[index],
                                category: categories[index],
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
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                hadithDua.getUrduCategory(categories[index]),
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
