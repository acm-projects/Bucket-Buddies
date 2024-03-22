import 'package:bucket_buddies_frontend/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'group_info.dart';
import 'bucketlist_group_viewer.dart';

class GroupTile extends StatefulWidget {
  String groupName = '';

  GroupTile(this.groupName);

  @override
  State<GroupTile> createState() => _GroupTileState();
}

class _GroupTileState extends State<GroupTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, BucketListGroupViewer.id);
        },
        style: ElevatedButton.styleFrom(
          side: BorderSide(width: 6.5, color: Color(0xFF19ADAD)),
        ),
        //style: OutlinedButton.styleFrom(primary: Color(0xFF0C5656)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Container(
            alignment: Alignment.centerLeft,
            height: 100.0,
            child: Text(
              widget.groupName,
              style: TextStyle(
                color: Color(0xFF19ADAD),
                fontFamily: 'LatoRegular',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
