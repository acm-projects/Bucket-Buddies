import 'package:bucket_buddies_frontend/group_info.dart';
import 'package:flutter/material.dart';
import 'group_tile.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //final _firestore = Firestore.instance; //for storing data to database

  ////////ATTENTION BACKEND!!!!! - UPDATING CURRENT USER//////////
  //final _auth = FirebaseAuth.instance;
  //FirebaseUser loggedInUser;

  /*@override
  void initState() {
    super.initState();

    getCurrentUser();
    loadGroupData();
  }*/

  /*
  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null){
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }
  */
  ///////////////////////////////////////////////////////////

  String? groupTitle;

  List<GroupTile> allGroups = [];
  /*This function navigates to GroupInfo page for user to enter the group name and then a new group tile is created*/
  Future <void> createGroup() async {

    Object? enteredGroupTitle = await Navigator.pushNamed(context, GroupInfo.id);
    
    setState(() {
      groupTitle = enteredGroupTitle as String?;

      GroupTile newGroup = new GroupTile(groupTitle!);
      ///////ATTENTION BACKEND!!!!! - adding a new group to the user's database (within a collection called 'groups')/////////
      //_firestore.collection('groups').add({
      // 'group name': groupTitle});
      allGroups.add(newGroup); //might remove this line and replace with the following line:
      //loadGroupFromData();
    });
  }
  //ATTENTION BACKEND: This function will be called to create group tile for groups that are found in the database
  /*void createGroupFromData(String passedGroupTitle) {

    setState(() {
      groupTitle = passedGroupTitle;

      GroupTile newGroup = new GroupTile(groupTitle!);

      allGroups.add(newGroup); //might remove this line
    });
  }*/

  //ATTENTION BACKEND: This function wil retrieve the group information for each group from teh database
  /*
  void loadGroupFromData async {
    final groups = await _firestore.collection('groups').getDocuments();
    for (var group in groups.documents) {
      createGroupFromData(group.data); //pass the group's name to the function
    }
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb2ffff),
      appBar: AppBar(
        actions: <Widget>[
          IconButton( //Logout button in top-right corner
            icon: Icon(Icons.logout),
            onPressed: () {
              //_auth.signOut(); /////BACKEND!!! - SIGNING USER OUT
              Navigator.pop(context);
            },
          ),
        ],
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
              ///////ATTENTION BACKEND!!!!! - adding a new group to the user's database/////////
              //_firestore.collection('groups').add({
              // 'group name': groupName});
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
