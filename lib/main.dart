import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_clone/suggestions.dart';
import 'package:youtube_clone/VideoCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: YoutubeHomePage(),
    );
  }
}

class YoutubeHomePage extends StatefulWidget {
  const YoutubeHomePage({Key key}) : super(key: key);

  @override
  _YoutubeHomePageState createState() => _YoutubeHomePageState();
}

class _YoutubeHomePageState extends State<YoutubeHomePage>
    with TickerProviderStateMixin {
  TabController _tabController;
  List<Widget> tabs = [
    Tab(
      icon: new Icon(Icons.home),
      text: "Home",
    ),
    Tab(
      icon: new Icon(Icons.explore),
      text: "Explore",
    ),
    Tab(
      icon: new Icon(
        Icons.add_circle_outline,
        size: 50.0,
      ),
    ),
    Tab(
      icon: new Icon(Icons.subscriptions),
      text: "Subscriptions",
    ),
    Tab(
      icon: new Icon(Icons.video_library),
      text: "Library",
    )
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'YouTube',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.youtube,
              color: Colors.red,
            ),
            onPressed: null),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.cast,
                color: Colors.black,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: null),
          IconButton(
              icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: FaIcon(
                    FontAwesomeIcons.snowman,
                    color: Colors.black,
                  )),
              onPressed: null),
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: tabs,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.blueGrey,
        indicatorColor: Colors.red,
        controller: _tabController,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10.0),
            child: Row(
              children: [
                Container(
                  height: 40.0,
                  width: 100.0,
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.explore),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "Explore",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 25.0,
                  width: 2.0,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Suggestions(),
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          VideoCard(),
        ],
      ),
    );
  }
}


