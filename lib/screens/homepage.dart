import 'package:flutter/material.dart';
import 'package:flutter_map/helper/connectivityenums.dart';
import 'package:flutter_map/widgets/errorDialog.dart';
import 'package:flutter_map/widgets/mapbuilder.dart';

import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var netStatus = Provider.of<ConnectivityStatus>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('GMaps'),
      ),
      body: (netStatus == ConnectivityStatus.Wifi ||
              netStatus == ConnectivityStatus.Cellular)
          ? GmapBuilder()
          : ErrorDialog(),
    );
  }
}
