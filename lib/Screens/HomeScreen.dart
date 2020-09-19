import 'package:anurag/Screens/Drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const id = '/HomeScreen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: DrawerItem(),
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 15,
          centerTitle: true,
          title: Text('ANURAG UNIVERSITY'),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.black54,
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
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
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
                          '20+ YEARS OF EXCELLENCE IN PROVIDING PROFESSIONAL EDUCATION',
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
                ),
                SizedBox(
                  height: 20,
                ),
                Text('COURSES OFFERED', style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
                Branches(
                    title: 'Computer Science & Engineering',
                    imageUrl:
                        'https://anurag.edu.in/wp-content/uploads/2020/02/Computer-Science-Engineering.jpg'),
                Branches(
                  title: 'Civil Engineering',
                  imageUrl:
                      'https://anurag.edu.in/wp-content/uploads/2020/02/Civil-Engineering.jpg',
                ),
                Branches(
                  title: 'Chemical Engineering',
                  imageUrl:
                      'https://anurag.edu.in/wp-content/uploads/2020/03/Chemical-Engineering-2.jpg',
                ),
                Branches(
                  title: 'Mechanical Engineering',
                  imageUrl:
                      'https://anurag.edu.in/wp-content/uploads/2020/02/Mechanical-Engineering.jpg',
                ),
                Branches(
                  title: 'Artificial Intelligence',
                  imageUrl:
                      'https://anurag.edu.in/wp-content/uploads/2020/02/Artificial-Intelligence.jpg',
                ),
                Branches(
                  title: 'Electrical & Electronics Engineering',
                  imageUrl:
                      'https://anurag.edu.in/wp-content/uploads/2020/02/Electrical-Electronics-Engineering.jpg',
                ),
                Branches(
                  title: 'Electronics & Communication Engineering',
                  imageUrl:
                      'https://anurag.edu.in/wp-content/uploads/2020/02/Electronics-Communication-Engineering.jpg',
                ),
                Branches(
                  title: 'Information Technology',
                  imageUrl:
                      'https://anurag.edu.in/wp-content/uploads/2020/02/Information-Technology.jpg',
                ),
                Branches(
                  title: 'Construction Technology and Management',
                  imageUrl:
                      'https://anurag.edu.in/wp-content/uploads/2020/05/construction-1.jpg',
                ),
                Branches(
                  imageUrl:
                      'https://anurag.edu.in/wp-content/uploads/2020/05/computer-science-1.jpg',
                  title: 'Computer Science and Systems Engineering',
                ),
                Branches(
                  imageUrl:
                      'https://anurag.edu.in/wp-content/uploads/2020/05/Artificial-Intelligence-2.jpg',
                  title: 'Artificial Intelligence and Machine Learning',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Branches extends StatelessWidget {
  final String title;
  final String imageUrl;
  Branches({@required this.title, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          child: Image.network(
            '$imageUrl',
            height: 250,
            width: double.infinity,
//                        color: Color(0xff0d69ff).withOpacity(1.0),
//                        colorBlendMode: BlendMode.softLight,
          ),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
        ),
        Container(
          height: 250,
          decoration: BoxDecoration(
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
              '$title',
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
    );
  }
}
