import 'package:bucket_buddies_frontend/group_info.dart';
import 'package:flutter/material.dart';
import 'group_tile.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  String groupName; //need to remove

  HomeScreen({required this.groupName}); //need to remove

  @override

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //int numGroups = 0;

  String? groupTitle;

  List<GroupTile> allGroups = [];

  Future <void> createGroup() async {

    Object? tester = await Navigator.pushNamed(context, GroupInfo.id);
    setState(() {
      groupTitle = tester as String?;

      GroupTile newGroup = new GroupTile(groupTitle!);
      allGroups.add(newGroup);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb2ffff),
      appBar: AppBar(
        title: Text('My Groups'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'LatoRegular',
          fontSize: 25.0,
        ),
        backgroundColor: Color(0xFF19ADAD),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: allGroups,
      ),
      floatingActionButton: Container(
        height: 100.0,
        width: 100.0,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              createGroup();
            });
          },
          foregroundColor: Colors.black,
          backgroundColor: Color(0xFF19ADAD),
          child: const Icon(Icons.group_add, size: 50.0,),
        ),
      ),
    );
  }
}
