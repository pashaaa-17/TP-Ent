import '/components/ldswitch/ldswitch_widget.dart';
import '/components/sidenav/sidenav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sidenav component.
  late SidenavModel sidenavModel;
  // Model for ldswitch component.
  late LdswitchModel ldswitchModel;

  @override
  void initState(BuildContext context) {
    sidenavModel = createModel(context, () => SidenavModel());
    ldswitchModel = createModel(context, () => LdswitchModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sidenavModel.dispose();
    ldswitchModel.dispose();
  }
}
