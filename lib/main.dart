import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Sivas App",
        theme: ThemeData(primaryColor: Colors.redAccent),
        home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int statevalue = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Family App",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(25),
          child: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  "You liked " + statevalue.toString(),
                  style: TextStyle(color: Colors.red, fontSize: 35),
                ),
              ),
              mainblock(
                  "http://www.moondrumudichumatrimony.com/images/site/profile/s2/39910416_1581148189.png"),
              mainblock(
                  "http://www.moondrumudichumatrimony.com/images/site/profile/s2/467024802_1581145690.png"),
              mainblock(
                  "http://www.moondrumudichumatrimony.com/images/site/profile/s2/39910416_1581148189.png"),
              mainblock(
                  "http://www.moondrumudichumatrimony.com/images/site/profile/s2/39910416_1581148189.png"),
              mainblock(
                  "http://www.moondrumudichumatrimony.com/images/site/profile/s2/39910416_1581148189.png")
            ],
          ))),
    );
  }

  Widget mainblock(url) {
    return Container(
        padding: EdgeInsets.only(top: 25),
        child: Row(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Image.network(url)),
            Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.4,
                child: RaisedButton(
                    child: Text("Like"),
                    onPressed: () {
                      setState(() {
                        statevalue = statevalue + 1;
                      });
                    }))
          ],
        ));
  }
}
