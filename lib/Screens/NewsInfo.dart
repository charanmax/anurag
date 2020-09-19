import 'package:anurag/Screens/Drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/Data.dart';

class NewsInfo extends StatelessWidget {
  static const String id = '/NewsInfo';

  @override
  Widget build(BuildContext context) {
    final News news = ModalRoute.of(context).settings.arguments;
    print(news.info);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 15,
          centerTitle: true,
          title: Text('ANURAG UNIVERSITY'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Card(
//            margin: EdgeInsets.only(top: 15),
                    elevation: 15,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Colors.blue.withOpacity(0.9),
                          Colors.red.withOpacity(0.3),
                        ],
                        stops: [
                          0.0,
                          1.0,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      )),
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
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    news.info,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'For More Info Visit:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    news.url,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
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
