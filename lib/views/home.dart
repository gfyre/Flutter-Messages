import 'package:Messages/data/data.dart';
import 'package:flutter/material.dart';

import '../models/story_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<StoryModel> stories = List();

  @override
  void initState() {
    super.initState();
    stories = getStories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        color: Color(0xff171719),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 70,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Messages',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff444446),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 150,
              child: ListView.builder(
                itemCount: stories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StoryTile(
                    imgUrl: stories[index].imgUrl,
                    username: stories[index].userName,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StoryTile extends StatelessWidget {
  String imgUrl;
  String username;
  StoryTile({@required this.imgUrl, @required this.username});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.network(
              imgUrl,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            username,
            style: TextStyle(
              color: Color(0xff78778a),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
