import 'package:flutter/material.dart';
import 'package:flutter_map/helper/connectivityenums.dart';
import 'package:provider/provider.dart';

class Networkservice extends StatelessWidget {
  final Widget child;

  const Networkservice({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var connectionStatus = Provider.of<ConnectivityStatus>(context);

    // if(connectionStatus == ConnectivityStatus.Wifi || connectionStatus == ConnectivityStatus.Cellular){
    //   return
    // }
  }
}
