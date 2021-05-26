import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VideoCard extends StatefulWidget {
  @override
  _VideoCardState createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  List<String> videoLink = [
    'https://images.squarespace-cdn.com/content/v1/553d1dabe4b02b334cdb720f/1563999428190-3VARDVM3BKKX8CE3J6LE/ke17ZwdGBToddI8pDm48kCpX2mwG9slVUzQCwhOMrQF7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UVDXM9yQ8sG6x3COIEUaadqpk9XPubC0H4MH9Az_c7nPqIjSxZ2rgD2_Fw9U6DWfsg/THE-500-RULE-FOR-ASTROPHOTOGRAPHY-STAN-MONIZ-ASTROPHOTOGRAPHY-WORKSHOPS.jpg',
    'https://miro.medium.com/max/3586/1*LrHZjOuizFH4bD4VKyTyuA.png',
    'https://www.sify.com/uploads/AP_20237377317485_uiylE8fgebceg.jpeg',
    'https://i.ytimg.com/vi/8pskQsGtHMg/maxresdefault.jpg'
  ];


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: videoLink.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  '${videoLink[index]}'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15,top: 10.0, bottom: 10, right: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://pbs.twimg.com/profile_images/378800000795137694/b97e98093a2d5fc1ecbd59e260f07e4c_400x400.jpeg'),
                                    )),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Follow the Rule of the Third Third',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '|| SuperWoman || • 1M views • 1 month ago',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              FaIcon(
                                FontAwesomeIcons.ellipsisV,
                                size: 20.0,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
