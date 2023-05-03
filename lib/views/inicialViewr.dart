import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:primeiro_projeto_flutter/components/user_tile.dart';
import 'package:primeiro_projeto_flutter/data/dummy_users.dart';
import 'package:primeiro_projeto_flutter/models/user.dart';
import 'package:primeiro_projeto_flutter/provider/users.dart';
import 'package:primeiro_projeto_flutter/views/listTextosViewr.dart';
import 'package:provider/provider.dart';

class InicialViewr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120.5),
          child: AppBar(
            title: Text('appLetrando'),
            titleSpacing: 0,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    users
                        .put(User(id: '1', nome: '', email: '', avatarURL: ''));
                  },
                  icon: Icon(Icons.add)),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              )
            ],
            elevation: 0,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade900,
                    Colors.lightBlueAccent.shade400
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              tabs: [
                Tab(icon: Icon(Icons.menu_book_outlined), text: 'Textos'),
                Tab(icon: Icon(Icons.favorite), text: 'Destaques'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            /*ListView.builder(
              itemCount: users.count,
              itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
            ),*/
            buildPageList('test'),
            //buildPage('home'),

            buildPageDetail('teste'),
          ],
        ),
        //ListView.builder(
        //itemCount: users.count,
        ///itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  } //build Context

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );

  Widget buildPageDetail(String text) => DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
              titleSpacing: 0,
              elevation: 0,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.shade900,
                      Colors.lightBlueAccent.shade400
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
              ),
              bottom: const TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 2,
                //indicator: UnderlineTabIndicator(
                //borderSide: BorderSide(width: 3.0),
                //insets: EdgeInsets.symmetric(horizontal: 10.0)),
                tabs: <Widget>[
                  Tab(text: 'Textos'),
                  Tab(text: 'Anotações'),
                ],
              )),
        ),
        body: TabBarView(children: <Widget>[
          buildPage('Textos'),
          buildPage('Anotações'),
        ]),
      ));

  Widget buildPageList(String text) => Scaffold(
        body: ListWheelScrollView(
          itemExtent: 250,
          children: [],
        ),
      );
}

/*buildCard(String t) {
  ListView.builder(
    itemCount: users.count,
    itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
  );

  
}*/
