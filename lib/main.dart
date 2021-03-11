import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(List<String> args) {
  // debug
  debugPaintSizeEnabled = true;
  debugPaintBaselinesEnabled = true;
  debugPaintLayerBordersEnabled = true;
  debugRepaintRainbowEnabled = true;

  // main
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter layout demo",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter layout demo2"),
          ),
          body: Column(
            children: [_titleSection, _createButtonSection(context)],
          )),
    );
  }
}

// title section
final Widget _titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              "Oeschinen Lake Campground",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "Kandersteg Switzerland",
            style: TextStyle(color: Colors.grey[500]),
          )
        ],
      )),
      Icon(Icons.star, color: Colors.red[500]),
      Text("41")
    ],
  ),
);

Widget _createButtonSection(BuildContext context) {
  Color color = Theme.of(context).primaryColor;

  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtionColumn(color, Icons.call, "Call"),
        _buildButtionColumn(color, Icons.near_me, "ROUTE"),
        _buildButtionColumn(color, Icons.share, "SHARE")
      ],
    ),
  );
}

Column _buildButtionColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        color: color,
      ),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: color),
        ),
      )
    ],
  );
}
