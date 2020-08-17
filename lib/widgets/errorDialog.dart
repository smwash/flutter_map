import 'package:flutter/material.dart';
import 'package:flutter_map/widgets/mapbuilder.dart';

class ErrorDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('This app requires internet connection'),
      children: [
        // SimpleDialogOption(
        //   child: ,
        //   onPressed: () => GmapBuilder(),
        // ),
      ],
    );
  }
}
