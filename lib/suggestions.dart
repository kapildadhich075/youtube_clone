import 'package:flutter/material.dart';
class Suggestions extends StatefulWidget {


  @override
  _SuggestionsState createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  List<String> tagList = [
    "All",
    "Today",
    "Continue Watching",
    "Unwatched",
    "Trending",
    "Programming",
    "Flutter"
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        margin: EdgeInsets.only(right: 10.0),
        height: 40.0,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: tagList.length,
            itemBuilder: (context, index) {
              return Container(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextButton(
                    onPressed: null,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '${tagList[index]}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey[700]),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
