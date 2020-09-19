import 'package:anurag/Screens/Drawer.dart';
import 'package:anurag/Screens/HomeScreen.dart';
import 'package:anurag/Screens/NewsInfo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'constants/Data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<NewsData>(
            create: (ctx) => NewsData(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              fontFamily: 'Fondamento',
              primaryColor: Colors.blue,
              primarySwatch: Colors.pink,
              appBarTheme: AppBarTheme(
                  color: Colors.redAccent,
                  textTheme: TextTheme(
                      headline6:
                          TextStyle(fontSize: 20, fontFamily: 'Fondamento')))),
          initialRoute: '/',
          routes: {
            '/': (ctx) => Anurag(),
            NewsInfo.id: (ctx) => NewsInfo(),
            HomeScreen.id: (ctx) => HomeScreen(),
          },
        ));
  }
}

class Anurag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        elevation: 15,
        centerTitle: true,
        title: Text(
          'ANURAG UNIVERSITY',
          style: TextStyle(fontFamily: 'Fondamento'),
        ),
      ),
      drawer: DrawerItem(),
      body: Details(),
    );
  }
}

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  void initState() {
    Provider.of<NewsData>(context, listen: false).getAndSetData();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<News> data = Provider.of<NewsData>(context).details;
    return ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, NewsInfo.id, arguments: data[index]);
            },
            child: Card(
                margin: EdgeInsets.all(10),
                elevation: 15,
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      child: Image.asset(
                        'assets/images/au.jpg',
                        height: 250,
                        width: double.infinity,
//                        color: Color(0xff0d69ff).withOpacity(1.0),
//                        colorBlendMode: BlendMode.softLight,
                      ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                    ),
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          gradient: LinearGradient(
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                              colors: [
                                Colors.blue.withOpacity(0.3),
                                Colors.red.withOpacity(0.3),
                              ],
                              stops: [
                                0.0,
                                1.0,
                              ])),
                    ),
                    Positioned(
                      bottom: 2,
                      left: 2,
                      right: 2,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        color: Colors.black54,
                        child: Text(
                          data[index].title,
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    )
                  ],
                )),
          );
        },
        itemCount: data.length);
  }
}

_getCustomAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.blue.withOpacity(0.9),
            Colors.red.withOpacity(0.3),
          ],
          stops: [
            0.0,
            1.0,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          Text(
            'ANURAG UNIVERSITY',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent),
          ),
          IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
        ],
      ),
    ),
  );
}
