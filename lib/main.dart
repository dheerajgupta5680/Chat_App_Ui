
import 'categories.dart';
import 'package:flutter/material.dart';
import 'chats.dart';
import 'favourites.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent,),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.white,
        ),
        title: const Center(
           child: Text(
               'Chats',
               style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                   fontWeight: FontWeight.bold
              ),
          ),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white
          )
        ],
        ),
      body:
        Column(
          children: <Widget>[
            categories(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F5DC),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  )
                ),
                child: Column(
                  children: <Widget>[
                    Favourites(),
                    Messages()
                  ],
                    )
                ),
                ),
          ],
        ),

      );
  }
}

