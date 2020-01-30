import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:test_before/podo/category.dart';
import 'package:test_before/providers/home.dart';
import 'package:test_before/scrreen/genre.dart';
import 'package:test_before/util/api.dart';
import 'package:test_before/util/consts.dart';
import 'package:test_before/widgets/book_card.dart';
import 'package:test_before/widgets/book_list_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (BuildContext context, HomeProvider homeProvider, Widget child) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "${Constants.appName}",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          body: homeProvider.loading
              ? Center(child: CircularProgressIndicator(),)
              : RefreshIndicator(
            onRefresh: ()=>homeProvider.getFeeds(),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 200,
                  child: Center(
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      scrollDirection: Axis.horizontal,
                      itemCount: homeProvider.top.feed.entry.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        Entry entry = homeProvider.top.feed.entry[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child: BookCard(
                            img: entry.link[1].href,
                            entry: entry,
                          ),
                        );
                      },
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Container(
                  height: 50,
                  child: Center(
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      scrollDirection: Axis.horizontal,
                      itemCount: homeProvider.top.feed.link.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        Link link = homeProvider.top.feed.link[index];

                        if(index < 10){
                          return SizedBox();
                        }

                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.all(Radius.circular(20),),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.all(Radius.circular(20),),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: Genre(
                                      title: "${link.title}",
                                      url: Api.baseURL+link.href,
                                    ),
                                  ),
                                );
                              },
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "${link.title}",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Recently Added",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

//                InkWell(
//                  onTap: (){
//                    Navigator.push(
//                      context,
//                      PageTransition(
//                        type: PageTransitionType.rightToLeft,
//                        child: Genre(),
//                      ),
//                    );
//                  },
//                  child: Text(
//                    "See All",
//                    style: TextStyle(
//                      color: Theme.of(context).accentColor,
//                      fontWeight: FontWeight.w400,
//                    ),
//                  ),
//                ),
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: homeProvider.recent.feed.entry.length,
                  itemBuilder: (BuildContext context, int index) {
                    Entry entry = homeProvider.recent.feed.entry[index];

                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: BookListItem(
                        img: entry.link[1].href,
                        title: entry.title.t,
                        author: entry.author.name.t,
                        desc: entry.summary.t,
                        entry: entry,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}