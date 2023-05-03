import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/views/inicialViewr.dart';
import 'package:primeiro_projeto_flutter/provider/users.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Users(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: InicialViewr(),
      ),
    );
  }
}
