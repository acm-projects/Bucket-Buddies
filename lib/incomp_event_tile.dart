import 'package:flutter/material.dart';

class incompEventTile extends StatefulWidget {
  String eventTitle = '';
  String eventDesc = ''; //don't know where this should go in the app yet

  incompEventTile(this.eventTitle, this.eventDesc);

  @override
  State<incompEventTile> createState() => _incompEventTileState();
}

class _incompEventTileState extends State<incompEventTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(color: const Color(0xff61a2b1), width: 2), // optional border on event containers.
        // Set the border width here
        color: const Color(0xff18475B),
        // Could be a placeholder and either replaced with the thumbnail image itself or the thumbnail image with this over it as a gradient fading out from bottom to top
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(right: 10),
      width: 110,
      height: 150,
      child: Stack(
        children: [
          Positioned(
            left: 8,
            bottom: 4,
            child: Text(
              widget.eventTitle,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xffF5F5F5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
